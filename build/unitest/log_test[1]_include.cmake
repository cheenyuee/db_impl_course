if(EXISTS "/Users/chenyue/Desktop/git/db_impl_course/build/unitest/log_test[1]_tests.cmake")
  include("/Users/chenyue/Desktop/git/db_impl_course/build/unitest/log_test[1]_tests.cmake")
else()
  add_test(log_test_NOT_BUILT log_test_NOT_BUILT)
endif()