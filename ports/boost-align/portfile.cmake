# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/align
    REF boost-1.80.0
    SHA512 10c790d3ab48d4a46611c4c6bb75566c7e5695fb23e369ddd70e394df85c7f6aa5dc845ac6795a09ea1967eaad340f2209a2a370e60f7211aa395cb70ae05b67
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
