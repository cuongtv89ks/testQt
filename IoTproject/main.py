from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot, QUrl
import PyQt5.QtMultimedia as M
import sys
#import artikSubcriber

def main():
    #import sys

    # Create an instance of the application
    app = QGuiApplication(sys.argv)
    # Create QML engine
    engine = QQmlApplicationEngine()
    # Create a subscriber object
#    subscriber = artikSubcriber.ArtikSubcriber()
    # And register it in the context of QML
#    engine.rootContext().setContextProperty("subscriber", subscriber)
    # Load the qml file into the engine
    engine.load("main.qml")

    engine.quit.connect(app.quit)
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
