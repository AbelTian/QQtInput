#include "dialog.h"
#include "ui_dialog.h"
#include "qqtinput.h"
#include "qqtapplication.h"

Dialog::Dialog ( QWidget* parent ) :
    QDialog ( parent ),
    ui ( new Ui::Dialog )
{
    ui->setupUi ( this );
    setFocus();
}

Dialog::~Dialog()
{
    delete ui;
}
