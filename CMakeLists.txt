cmake_minimum_required(VERSION 3.16)

project(shop-db-qt-qml-cmake VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 6.2 COMPONENTS Core Quick QuickControls2 REQUIRED)


qt_add_executable(appshop-db-qt-qml-cmake
    src/main.cpp
    src/dbconnector.hpp src/dbconnector.cpp
    src/qml.qrc
)

#qt_add_resources(appshop-db-qt-qml-cmake
#    )


set_target_properties(appshop-db-qt-qml-cmake PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(appshop-db-qt-qml-cmake
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appshop-db-qt-qml-cmake
    PRIVATE Qt6::Quick)
