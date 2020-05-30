TEMPLATE = app
CONFIG += testcase warn_on
QT += testlib
QT -= gui

DEFINES += QT_DEPRECATED_WARNINGS


# Additional warnings and make all warnings into errors
gcc:QMAKE_CXXFLAGS += -Werror -Wold-style-cast

gcc {
    message("Code coverage enabled (gcov)")
    QMAKE_CXXFLAGS += --coverage -O0 -g
    QMAKE_LFLAGS += --coverage -O0 -g
} else {
    message("Code coverage only available when compiling with GCC")
}

include($$PWD/../lib_utils.pri)
message($$INCLUDEPATH)
