#!/bin/bash

APPFOLDER="Tulospalvelu.app/Contents/MacOS/"
FRAMEWORKFOLDER="Tulospalvelu.app/Contents/Frameworks/"

mkdir -p $FRAMEWORKFOLDER

cp /Library/Frameworks/libQtSerialPort.1.0.0.dylib $FRAMEWORKFOLDER
cp -r /Library/Frameworks/QtCore.framework $FRAMEWORKFOLDER
cp -r /Library/Frameworks/QtGui.framework $FRAMEWORKFOLDER
cp -r /Library/Frameworks/QtXml.framework $FRAMEWORKFOLDER
cp -r /Library/Frameworks/QtSql.framework $FRAMEWORKFOLDER

install_name_tool -id @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$FRAMEWORKFOLDER"QtCore.framework/Versions/4/QtCore
install_name_tool -id @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui "$FRAMEWORKFOLDER"QtGui.framework/Versions/4/QtGui
install_name_tool -id @executable_path/../Frameworks/QtXml.framework/Versions/4/QtXml "$FRAMEWORKFOLDER"QtXml.framework/Versions/4/QtXml
install_name_tool -id @executable_path/../Frameworks/QtSql.framework/Versions/4/QtSql "$FRAMEWORKFOLDER"QtSql.framework/Versions/4/QtSql
install_name_tool -id @executable_path/../Frameworks/libQtSerialPort.1.0.0.dylib "$FRAMEWORKFOLDER"libQtSerialPort.1.0.0.dylib

install_name_tool -change QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$APPFOLDER"Tulospalvelu
install_name_tool -change QtGui.framework/Versions/4/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui "$APPFOLDER"Tulospalvelu
install_name_tool -change QtXml.framework/Versions/4/QtXml @executable_path/../Frameworks/QtXml.framework/Versions/4/QtXml "$APPFOLDER"Tulospalvelu
install_name_tool -change QtSql.framework/Versions/4/QtSql @executable_path/../Frameworks/QtSql.framework/Versions/4/QtSql "$APPFOLDER"Tulospalvelu
install_name_tool -change libQtSerialPort.1.dylib @executable_path/../Frameworks/libQtSerialPort.1.0.0.dylib "$APPFOLDER"Tulospalvelu

install_name_tool -change QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$FRAMEWORKFOLDER"QtGui.framework/Versions/4/QtGui
install_name_tool -change QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$FRAMEWORKFOLDER"QtXml.framework/Versions/4/QtXml
install_name_tool -change QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$FRAMEWORKFOLDER"QtSql.framework/Versions/4/QtSql
install_name_tool -change QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore "$FRAMEWORKFOLDER"libQtSerialPort.1.0.0.dylib

exit 0