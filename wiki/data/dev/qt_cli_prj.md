# Windows with MinGw-compiler
To build a simple console project with Qt from scratch:

1. set the environment variables:  
    ```
    > set PATH=C:\Qt\5.15.2\mingw81_64\bin\;C:\Qt\Tools\mingw810_64\bin;%PATH%
    ```

2. create a `.pro` file:  
    ```
    > qmake -pro
    ```  
    (a project-file with the parent directory name will be created,
    it is better rename it to something like this `prj.pro`)
    
3. edit the `.pro` file something like this:  
   ```
   TEMPLATE = app
   TARGET = prj
   INCLUDEPATH += .
   CONFIG += console debug
   QT += widgets
   QMAKE_CXXFLAGS += -std=c++17 -Wall -Wextra -pedantic

   # The following define makes your compiler warn you if you use any
   # feature of Qt which has been marked as deprecated (the exact warnings
   # depend on your compiler). Please consult the documentation of the
   # deprecated API in order to know how to port your code away from it.
   DEFINES += QT_DEPRECATED_WARNINGS

   # You can also make your code fail to compile if you use deprecated APIs.
   # In order to do so, uncomment the following line.
   # You can also select to disable deprecated APIs only up to a certain version of Qt.
   #DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

   # Input
   SOURCES += main.cpp
   ```

4. build a makefile:
   ```
   > qmake
   ```
   
5. compile:
   ```
   > mingw32-make
   ```
