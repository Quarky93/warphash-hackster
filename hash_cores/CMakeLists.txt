cmake_minimum_required(VERSION 3.14)
project (warphash)

set(CMAKE_CXX_STANDARD 14)

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/47f819c3ca54fb602f432904443e00a0a1fe2f42.zip
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

if (WIN32)
  set(VITIS_INCLUDE_PATH C:/Xilinx/Vitis_HLS/2021.2/include)
endif (WIN32)

if (UNIX)
  set(VITIS_INCLUDE_PATH /tools/Xilinx/Vitis_HLS/2021.2/include)
endif (UNIX)

include_directories(include/hw ${VITIS_INCLUDE_PATH})

enable_testing()

add_executable(
  hash_test
  ./test/hw/core/hash_test.cpp
  ./src/hw/core/blake.cpp
  ./src/hw/core/bmw.cpp
  ./src/hw/core/jh.cpp
  ./src/hw/core/groestl.cpp
  ./src/hw/core/keccak.cpp
  ./src/hw/core/skein.cpp
  ./src/hw/core/luffa.cpp
  ./src/hw/core/cubehash.cpp
)

target_link_libraries(
  hash_test
  gtest_main
)

include(GoogleTest)
gtest_discover_tests(hash_test)

# ---------------------------------------------------------------------------------------------------------------------
set(FREQ 450)
set(SYNTH_DIRECTIVE sdx_optimization_effort_high)

function(add_hash_target name mode freq csynth_tune synth_directive)
  add_custom_command(OUTPUT ${name}_${mode}/${name}_${mode}_f${freq}/syn/report/csynth.rpt COMMAND vitis_hls -f ../scripts/csynth_hash.tcl ${name} ${mode} ${freq} ${csynth_tune})
  add_custom_command(OUTPUT ${name}_${mode}/${name}_${mode}_f${freq}/impl/export.zip COMMAND vitis_hls -f ../scripts/export_hash.tcl ${name} ${mode} ${freq} DEPENDS ${name}_${mode}/${name}_${mode}_f${freq}/syn/report/csynth.rpt)
  add_custom_command(OUTPUT ooc_synth_${name}_${mode}_f${freq}.dcp COMMAND vivado -mode batch -source ../scripts/ooc_synth_hash.tcl -tclargs ${name} ${mode} ${freq} ${synth_directive} DEPENDS ${name}_${mode}/${name}_${mode}_f${freq}/syn/report/csynth.rpt)
  add_custom_command(OUTPUT ooc_impl_${name}_${mode}_f${freq}.dcp COMMAND vivado -mode batch -source ../scripts/ooc_impl_hash.tcl -tclargs ${name} ${mode} ${freq} DEPENDS ooc_synth_${name}_${mode}_f${freq}.dcp)
  add_custom_target(csynth_${name}_${mode}_f${freq} DEPENDS ${name}_${mode}/${name}_${mode}_f${freq}/syn/report/csynth.rpt)
  add_custom_target(export_${name}_${mode}_f${freq} DEPENDS ${name}_${mode}/${name}_${mode}_f${freq}/impl/export.zip)
  add_custom_target(ooc_synth_${name}_${mode}_f${freq} DEPENDS ooc_synth_${name}_${mode}_f${freq}.dcp)
  add_custom_target(ooc_impl_${name}_${mode}_f${freq} DEPENDS ooc_impl_${name}_${mode}_f${freq}.dcp)
endfunction()

function(add_hash_targets name freq csynth_tune synth_directive)
  add_hash_target(${name} head ${freq} "${csynth_tune}" ${synth_directive})
  add_hash_target(${name} tail ${freq} "${csynth_tune}" ${synth_directive})
  add_custom_target(csynth_${name}_f${freq} DEPENDS csynth_${name}_head_f${freq} csynth_${name}_tail_f${freq})
  add_custom_target(export_${name}_f${freq} DEPENDS export_${name}_head_f${freq} export_${name}_tail_f${freq})
  add_custom_target(ooc_synth_${name}_f${freq} DEPENDS ooc_synth_${name}_head_f${freq} ooc_synth_${name}_tail_f${freq})
  add_custom_target(ooc_impl_${name}_f${freq} DEPENDS ooc_impl_${name}_head_f${freq} ooc_impl_${name}_tail_f${freq})
endfunction()

add_hash_targets(blake ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(bmw ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(groestl ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(jh ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(keccak ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(skein ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(luffa ${FREQ} "" ${SYNTH_DIRECTIVE})
add_hash_targets(cubehash ${FREQ} "" ${SYNTH_DIRECTIVE})
# ---------------------------------------------------------------------------------------------------------------------
