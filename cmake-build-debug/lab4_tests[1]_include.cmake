if(EXISTS "C:/Users/Валентин/CLionProjects/lab4/cmake-build-debug/lab4_tests[1]_tests.cmake")
  include("C:/Users/Валентин/CLionProjects/lab4/cmake-build-debug/lab4_tests[1]_tests.cmake")
else()
  add_test(lab4_tests_NOT_BUILT lab4_tests_NOT_BUILT)
endif()
