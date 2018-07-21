#-------------------------------------------------
#
# Project created by QtCreator 2018-07-21T18:24:38
#
#-------------------------------------------------

QT       -= gui

TARGET = QQtInput
TEMPLATE = lib
CONFIG += build_all

include (../../multi-link/add_base_manager.pri)

contains(DEFINES, LIB_LIBRARY):DEFINES += QQTINPUT_LIBRARY
else:contains(DEFINES, LIB_STATIC_LIBRARY):DEFINES += QQTINPUT_STATIC_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        qqtinput.cpp

HEADERS += \
        qqtinput.h \
        qqtinput_global.h 

FORMS += \
        qqtinput.ui

system("touch qqtinput.cpp")
add_version(3,0,0,0)
add_sdk()
add_dependent_manager(QQt)
