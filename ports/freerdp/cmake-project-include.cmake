find_package(PkgConfig REQUIRED)
if(CHANNEL_URBDRC)
    pkg_check_modules(vcpkg_libusb REQUIRED libusb-1.0)
    set(LIBUSB_1_INCLUDE_DIR "${vcpkg_libusb_INCLUDE_DIRS}")
    set(LIBUSB_1_LIBRARY "${vcpkg_libusb_LINK_LIBRARIES}")
    string(REPLACE "-Wl,-framework," "-framework " libusb_frameworks "${vcpkg_libusb_LDFLAGS}")
    list(FILTER libusb_frameworks INCLUDE REGEX "^-framework ")
    list(APPEND LIBUSB_1_LIBRARY ${libusb_frameworks})
endif()
if(WITH_FFMPEG)
    # Exact pkg_check_modules signature as in project
    pkg_check_modules(AVCODEC libavcodec)
    set(AVCODEC_LIBRARY "${AVCODEC_LINK_LIBRARIES}")
    pkg_check_modules(AVUTIL libavutil)
    set(AVUTIL_LIBRARY "${AVUTIL_LINK_LIBRARIES}")
    string(REPLACE "-Wl,-framework," "-framework " avutil_frameworks "${AVUTIL_LDFLAGS}")
    list(FILTER avutil_frameworks INCLUDE REGEX "^-framework ")
    list(APPEND AVUTIL_LIBRARY ${avutil_frameworks})
    pkg_check_modules(SWRESAMPLE libswresample)
    set(SWRESAMPLE_LIBRARY "${SWRESAMPLE_LINK_LIBRARIES}")
endif()
