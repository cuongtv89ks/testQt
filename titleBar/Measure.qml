import QtQuick 2.0

Rectangle {
    anchors.fill: parrent
    color: "red"

    MyButton {
        id: startButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        width: parent.width - 60
        height: 100
        radius: 0.2

        Text {
            anchors.centerIn: parent
            font.pixelSize: 30
            text: qsTr("START")
            color: "white"
        }
    }
}
