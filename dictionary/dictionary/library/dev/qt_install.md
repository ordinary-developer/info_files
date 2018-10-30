# qt install

## install from sources
To build from sources enter your temp directory:
```sh
$ git clone git://gitorious.org/qt/qt5.git    
$ cd qt5								                                 
$ sudo ./init-repository						                         
$ sudo ./configure -prefix $PWD/qtbase -opnesource			         
$ sudo make -j 4							                             
$ sudo make install							                         
```


 
 installation from binaries
 ==========================

 Copy from qt-project online installer
 then type (may be under root)
 -------------------------------------------------------------------------
 | $ chmod +x qt-linux-opensource-1.4.0-x86-online.ru			         |	
 | $ ./qt-linux-opensource-1.4.0-x86-online.ru				             |
 -------------------------------------------------------------------------

 May be you need to install
 -------------------------------------------------------------------------
 | $ sudo apt-get install make g++ libglu1-mesa-dev			             |
 -------------------------------------------------------------------------
 or
 -------------------------------------------------------------------------
 | $ sudo apt-get install libgl1-mesa-dev			                	 |
 -------------------------------------------------------------------------


 creating applications
 =====================

 to compile a qt project you need
 
 1. run 'qmake -project'
 2. Open the .pro file after its creation and add at the end of the file
	CONFIG = qt     
	QT += widgets
 3. run 'qmake Project.pro'
 4. run 'make'

 Notes*:
 - May be it will be necessary in your source code 
   change "<QtGui/WidgetName>" to "<QtWidget/WidgetName>"
 - Now <QtApplication> is situated in <QtWidgets>
   and QSound is situated in <QtMultimedia>


 auxiliary notes
 ===============
 
 you can also use the next script for converting from qt4
 -------------------------------------------------------------------------
 | cat qt4.sh								                             | 	
 | #!/bin/bash								                             |
 | set -e 								                                 |	
 | for a in *.{cpp,h}; do						                         |
 |  if [ -f $a ]; then							                         |
 |   sed 's/^#include <QtGui>/#include <QtWidgets>/' $a > /tmp/$a~;      |
 |   sed 's/^#include </#include <QtWidgets\//' /tmp/$a~ > $a; rm /tmp/$a~; 
 |  fi;								                                     |
 | done									                                 |
 -------------------------------------------------------------------------
 you put this in ".." and run it from the project’s directory: 
 "../qt4.sh"

 for editing .pro file
 -------------------------------------------------------------------------
 | qmake -project				                            			 |
 | cat >> *.pro <<-stop							                         |
 | CONFIG=qt								                             |
 | QT += widgets							                             |
 | stop									                                 |
 | qmake *.pro								                             |
 | make									                                 |
 -------------------------------------------------------------------------
