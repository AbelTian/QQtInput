##############################################################
#编译 QQtInput
#为用户编译本库提供头文件包含集、宏控制集方便。
##############################################################
#######################################################################################
#定义函数
#######################################################################################
#修改
defineTest(add_include_QQtInput){
    #header_path = $$1

    command =
    #basic
    #command += $${header_path}
    #这里添加$${path}下的子文件夹
    #...
    header_path=$${PWD}
    command += $${header_path}

    INCLUDEPATH += $$command
    export(INCLUDEPATH)
    return (1)
}

#修改
defineTest(add_defines_QQtInput){
    #添加这个SDK里的defines
    #add_defines()

    export(QT)
    export(DEFINES)
    export(CONFIG)

    return (1)
}

#本库使用的定义 - 静态编译时
defineTest(add_static_defines_QQtInput) {
    #如果定义编译静态库，那么开启
    DEFINES += QQTINPUT_STATIC_LIBRARY

    add_defines_QQtInput()

    export(DEFINES)
    return (1)
}

add_include_QQtInput()
contains(DEFINES, LIB_LIBRARY):add_defines_QQtInput()
else:contains(DEFINES, LIB_STATIC_LIBRARY):add_static_defines_QQtInput()

