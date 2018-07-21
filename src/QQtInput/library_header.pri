#######################################################################################
#定义函数
#######################################################################################
#修改
defineTest(add_include_QQtInput){
    #不为空，肯定是源码里的路径。 用于导出头文件
    header_path = $$1
    #如果参数1为空，那么是用SDK里的路径 用于链接时包含头文件
    #此处_bundle代表 mac下头文件在bundle里。 留意
    #isEmpty(header_path):header_path=$$get_add_include(QQtInput, QQtInput)

    command =
    #basic
    #command += $${header_path}
    #这里添加$${path}下的子文件夹
    #...
    #header_path = $$1
    isEmpty(1):header_path=$${PWD}
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
