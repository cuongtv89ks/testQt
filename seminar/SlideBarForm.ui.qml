import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: 250
    height: 480
    color: "#191919"
    Material.theme: Material.Dark
    Material.accent: Material.DeepOrange
    Material.foreground: Material.White
    Text {
        color: "#ff2b00"
        text: "Smart Home"
        anchors.right: parent.right
        anchors.rightMargin: 126
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        font.pointSize: 22
    }

    TimeDisplay {
        id: timeDisplay
        height: 141
        anchors.top: parent.top
        anchors.topMargin: 80
        anchors.left: parent.left
        anchors.right: parent.right
    }

    SetAlarm {
        id: setAlarm
        x: 0
        y: 227
    }
}
