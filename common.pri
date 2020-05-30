
CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT
CONFIG += c++11

QT -= gui

# yocto enables these by default, make sure these are added on SDK compling, too
QMAKE_CXXFLAGS += -Wformat-security -Werror=format-security

# Just to make sure its on
QMAKE_CXXFLAGS += -Wall -Wextra


# Probably a good idea to enable this
#release:DEFINES += -Werror
# or this
#debug:DEFINES += -Werror

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Ports for Inter Process Communication For Audio Video Player:
DEFINES += "GSTNETPORT=51153"
DEFINES += "AVIPCPORT=51152"
