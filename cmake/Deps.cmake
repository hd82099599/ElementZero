find_package (SQLiteCpp CONFIG REQUIRED)
set (Boost_NO_SYSTEM_PATHS ON)
set (Boost_NO_BOOST_CMAKE ON)
find_package (Boost 1.72.0 REQUIRED)
find_and_install_package (sqlite3 sqlite3)
find_and_install_package (yaml-cpp yaml-cpp)
find_package (msgpack CONFIG REQUIRED)
find_package (Flatbuffers CONFIG REQUIRED)
get_directory_property(hasParent PARENT_DIRECTORY)
if(hasParent)
    set (PKG_FOUND 1 PARENT_SCOPE)
else()
    set (PKG_FOUND 1)
endif()