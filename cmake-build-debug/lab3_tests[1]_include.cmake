if(EXISTS "C:/Users/Валентин/CLionProjects/lab4/cmake-build-debug/lab3_tests[1]_tests.cmake")
  include("C:/Users/Валентин/CLionProjects/lab4/cmake-build-debug/lab3_tests[1]_tests.cmake")
else()
  add_test(lab3_tests_NOT_BUILT lab3_tests_NOT_BUILT)
endif()
