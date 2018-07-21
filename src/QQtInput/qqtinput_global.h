#ifndef QQTINPUT_GLOBAL_H
#define QQTINPUT_GLOBAL_H

#include <QtCore/qglobal.h>

#ifdef Q_OS_WIN
#if defined(QQTINPUT_LIBRARY)
#  define QQTINPUTSHARED_EXPORT Q_DECL_EXPORT
#elif defined(QQTINPUT_STATIC_LIBRARY)
#  define QQTINPUTSHARED_EXPORT
#else
#  define QQTINPUTSHARED_EXPORT Q_DECL_IMPORT
#endif
#else
#  define QQTINPUTSHARED_EXPORT
#endif

#endif // QQTINPUT_GLOBAL_H
