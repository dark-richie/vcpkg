# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/vmd
    REF boost-1.80.0
    SHA512 cf6c9c3684e14225750669413ac2f538ebc207fc6ca7180a10a371b0d03de4e3ac570648d2b30e7f534a8f5c49499e9a03866cbf0613cdf25f1ff7ce4a7e1cac
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
