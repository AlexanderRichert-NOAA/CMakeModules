# This module looks for environment variables detailing where SP lib is
# If variables are not set, SP will be built from external source

if(DEFINED ENV{SP_LIBd} )
  set(SP_LIBd $ENV{SP_LIBd} CACHE STRING "SP_d Library Location" )
  set(SP_LIB4 $ENV{SP_LIB4} CACHE STRING "SP_4 Library Location" )
  set(SP_LIB8 $ENV{SP_LIB8} CACHE STRING "SP_8 Library Location" )
else()
  set(SP_VER 2.0.2)
  find_library( SP_LIBd
    NAMES libsp_v${SP_VER}_d.a
    HINTS
      ${NCEPLIBS_INSTALL_DIR}/lib
    )
  find_library( SP_LIB4
    NAMES libsp_v${SP_VER}_4.a
    HINTS
      ${NCEPLIBS_INSTALL_DIR}/lib
    )
  find_library( SP_LIB8
    NAMES libsp_v${SP_VER}_8.a
    HINTS
      ${NCEPLIBS_INSTALL_DIR}/lib
    )
endif()
