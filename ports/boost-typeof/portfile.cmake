# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/typeof
    REF boost-1.81.0
    SHA512 764ec23b19bd1954ecbaa8a9669a93b5c79586430a3f14ef29e1189d00d571ffe86b7a65d86e36b2d2eb486e173e3664f637c304e89005eef01931a62fa07e39
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
