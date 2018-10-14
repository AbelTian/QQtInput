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
    #如果定义编译静态库，那么开启
    contains(DEFINES, LIB_STATIC_LIBRARY):DEFINES += QQTINPUT_STATIC_LIBRARY

    return (1)
}

add_include_QQtInput()
add_defines_QQtInput()
