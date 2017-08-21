import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "#2d3037"

    property int __currentIndex: 0

    TitleBar {
        id: titleBar
        currentIndex: __currentIndex
        onTitleClicked: {
            __currentIndex = index
            if (__currentIndex === 0){
                loader.setSource("Connect.qml", {"opacity" : 1})
            }
            if (__currentIndex == 1) {
                loader.setSource("Measure.qml", {"opacity" : 1})
            }
            if (__currentIndex == 2) {
                loader.setSource("Connect.qml", {"opacity" : 0.5
                                 })
            }
        }
    }

    Loader {
        id: loader
        anchors.top: titleBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 5
        source: "Connect.qml"
    }

}
