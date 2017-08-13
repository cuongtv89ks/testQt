#!/usr/bin/env python
# -*- coding: utf-8 -*-

from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot, QUrl
import PyQt5.QtMultimedia as M
import sys

class Alarm(QObject):
    def __init__(self):
        QObject.__init__(self)
        self.url = QUrl.fromLocalFile("://sound.mp3")
        self.content = M.QMediaContent(self.url)
        self.player = M.QMediaPlayer()

    @pyqtSlot()
    def alarmStart(self):
        print("Alarm")
        self.player.setMedia(self.content)
        self.player.setVolume(30)
        self.player.play()

    @pyqtSlot()
    def alarmStop(self):
        print("Dismiss")
        self.player.stop()

    @pyqtSlot()
    def alarmSnooze(self):
        print("Snooze")
        self.player.stop()

class WeatherForecast(QObject):
    def __init__(self):
        QObject.__init__(self)

if __name__ == "__main__":
    import sys

    # Create an instance of the application
    app = QGuiApplication(sys.argv)
    # Create QML engine
    engine = QQmlApplicationEngine()
    # Create a calculator object
    alarm = Alarm()
    # And register it in the context of QML
    engine.rootContext().setContextProperty("alarm", alarm)
    # Load the qml file into the engine
    engine.load("main.qml")

    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
