cmake_minimum_required(VERSION 3.16)

project(HomeCenterUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appHomeCenterUI
    main.cpp
)

qt_add_qml_module(appHomeCenterUI
    URI HomeCenterUI
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES miscinfo.h miscinfo.cpp
        QML_FILES ImageButton.qml
        RESOURCES assets/icons/cloudy.png assets/icons/menu.png assets/icons/setting.png assets/icons/wifi.png
        QML_FILES ClockTile.qml
        SOURCES ApiKeys.h
        SOURCES weatherapp.h weatherapp.cpp
        QML_FILES WeatherCurrentTile.qml
        QML_FILES StocksTile.qml
        QML_FILES WeatherBmeTile.qml
        QML_FILES LogTile.qml
        QML_FILES LogModel.qml
        RESOURCES assets/icons/cloudy.png assets/icons/menu.png assets/icons/setting.png assets/icons/sun.png assets/icons/warning.png assets/icons/wifi.png
        QML_FILES SideBar.qml
        SOURCES stocksapp.h stocksapp.cpp
        SOURCES systemlog.h systemlog.cpp
        SOURCES logelement.h logelement.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appHomeCenterUI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appHomeCenterUI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appHomeCenterUI
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appHomeCenterUI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
