#include "dialog.h"
#include <QQtApplication>
#include <QStyle>
#include <qqtinput.h>

int main ( int argc, char* argv[] )
{
    QQtApplication a ( argc, argv );

    //这个字体，有的平台不显示。
    //qApp->setFont ( QFont ( "Microsoft YaHei", 10 ) );

    /*嵌入式板子上，初始化输入法*/
    /*要求：数据库CONF_PATH/db/PinYin.db必须存在，否则会弹出out of memory Error opening database*/
    /*要求：皮肤在CONF_PATH/skin/input必须存在，否则页面上会显示的不好看*/
    /*Multi-link Technology会自动拷贝AppRoot下的资源到编译目录和发布目录*/
    //挑embedded linux平台。
#ifdef __EMBEDDED_LINUX__
    QQtInput::Instance()->Init ( "min", "control", "QQt", 14, 14 );
#endif

    //不挑平台，强制显示。
    QQtInput::Instance()->Init ( "min", "center", "QQt", 14, 14 );

    Dialog w;
    w.show();

    return a.exec();
}
