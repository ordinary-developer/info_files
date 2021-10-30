# GUI app with MinGW-compiler
To build a simple desktop (GUI) app with Qt from scratch:

1. set the environment variables:
    ```sh
    > set PATH=C:\Qt\5.15.2\mingw81_64\bin\;C:\Qt\Tools\mingw810_64\bin;%PATH%
    ```

2. create a `.pro` file:
    ```sh
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
   QT += widgets quick qml
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
   RESOURCES += qml.qrc
   ```

4. create the `main.cpp` file with something like this:
   ```cpp
   #include <QGuiApplication>
   #include <QQmlApplicationEngine>

   int main(int argc, char** argv) {
      QGuiApplication app{ argc, argv };

      QQmlApplicationEngine engine{};
      engine.load(QUrl{QStringLiteral("qrc:/main.qml")});
      if (engine.rootObjects().isEmpty())
          return -1;

      return app.exec();
   }
   ```

5. create the `qml.qrc` with something like this:
   ```
   import QtQuick 2.6
   import QtQuick.Window 2.2

   Window {
       visible: true
       width: 640
       height: 480
       title: qsTr("App Title")
   }
   ```

6. create the `qml.qrc` file with something like this:
   ```
   <RCC>
       <qresource prefix="/">
           <file>main.qml</file>
       </qresource>
   </RCC>
   ```

7. build a makefile:
   ```
   > qmake
   ```
   
8. compile:
   ```
   > mingw32-make
   ```


## Remarks
For a more complex example the `main.cpp` can be the next:
```
#include <QGuiApplication>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QDir>

int main(int argc, char** argv) {
    QGuiApplication app{ argc, argv };
    QQuickView view{};
    QFileInfo fileInfo{ app.applicationFilePath() };

    app.setApplicationName(fileInfo.baseName());

    view.connect(view.engine(), SIGNAL(quit()), &app, SLOT(quit()));
    new QQmlFileSelector(view.engine(), &view);

    view.setSource(QUrl{"qrc:/main.qml"});
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    return app.exec();
} 
```

