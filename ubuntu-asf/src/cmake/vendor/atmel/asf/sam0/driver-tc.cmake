list(APPEND VENDOR_ATMEL_ASF_SRC_FILES
    "${ASF_ROOT}/${ATMEL_GENERAL_FAMILY}/drivers/tc/tc_sam_d_r_h/tc.c")
list(APPEND VENDOR_ATMEL_ASF_INCLUDES
    "${ASF_ROOT}/${ATMEL_GENERAL_FAMILY}/drivers/tc")

if (DEFINED VENDOR_ATMEL_ASF_DRIVER_TC_OPT_ASYNC)
  if(VENDOR_ATMEL_ASF_DRIVER_TC_OPT_ASYNC)
    add_definitions(-DTC_ASYNC=true)
  else()
    add_definitions(-DTC_ASYNC=false)
  endif()
else()
 message(SEND_ERROR "VENDOR_ATMEL_ASF_DRIVER_TC_OPT_ASYNC MUST BE SET")
endif()
