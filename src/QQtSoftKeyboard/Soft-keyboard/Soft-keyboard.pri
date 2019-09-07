#-------------------------------------------------
#
# Project created by QtCreator 2017-11-03T09:42:03
#
#-------------------------------------------------

QT       += core gui sql xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

INCLUDEPATH += chineseInput
QMAKE_CXXFLAGS += -std=c++11

SOURCES  += \
    $${PWD}/xyvirtualkeyboard.cpp \
    $${PWD}/xypushbutton.cpp \
    $${PWD}/xydragablewidget.cpp \
    $${PWD}/chineseInput/xydatabaseoperation.cpp \
    $${PWD}/chineseInput/xytranslateitem.cpp \
    $${PWD}/chineseInput/xyinputsearchinterface.cpp \
    $${PWD}/xyhdragabletranslateview.cpp \
    $${PWD}/xyvdragabletranslateview.cpp \
    $${PWD}/xyqstringview.cpp \
    $${PWD}/xyskin.cpp \
    $${PWD}/xytempwindows.cpp

HEADERS  += \
    $${PWD}/xyvirtualkeyboard.h \
    $${PWD}/xypushbutton.h \
    $${PWD}/xydragablewidget.h \
    $${PWD}/chineseInput/xydatabaseoperation.h \
    $${PWD}/chineseInput/xytranslateitem.h \
    $${PWD}/chineseInput/xyinputsearchinterface.h \
    $${PWD}/xyhdragabletranslateview.h \
    $${PWD}/xyvdragabletranslateview.h \
    $${PWD}/xyqstringview.h \
    $${PWD}/xyskin.h \
    $${PWD}/xytempwindows.h

# 这里区分当前编译类型
DEFINES += THIS_IS_PLUGIN
if(contains(DEFINES,THIS_IS_PLUGIN)){
TEMPLATE = lib
QT += gui-private
CONFIG += plugin

SOURCES  += \
    $${PWD}/xyplatforminputcontext.cpp \
    $${PWD}/xyinputplugin.cpp

HEADERS  += \
    $${PWD}/xyplatforminputcontext.h \
    $${PWD}/xyinputplugin.h

} else {
TEMPLATE = app
SOURCES  += \
    main.cpp
}

msvc {
greaterThan(QT_MAJOR_VERSION, 4): RC_FILE = $${PWD}/ico.rc
}

RESOURCES += \
    $${PWD}/images/images.qrc \
    $${PWD}/data/files.qrc

include($$PWD/libgooglepinyin/googlepinyin.pri)
