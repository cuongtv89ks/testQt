import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    width: 400
    height: 150

    property alias day: dayText.text
    property alias sourceImage: icon.source
    property alias hightTemp: highLabel.text
    property alias lowTemp: lowTable.text


    Item {
        id: item1
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 261
        anchors.fill: parent

        Text {
            id: dayText
            text: qsTr("TODAY")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 30
            color: "white"
        }
    }

    Item {
        id: item2
        x: 6
        y: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.rightMargin: 115
        anchors.topMargin: 0
        anchors.leftMargin: 145

        Image {
            id: icon
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent
            source: "Image/Simple Weather Icons/0.png"
        }
    }

    Item {
        id: item3
        x: -2
        y: 7
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 291

        Text {
            id: highLabel
            height: 42
            text: qsTr("34")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.pixelSize: 25
            color: "white"
        }

        Text {
            id: lowTable
            x: 8
            y: 69
            width: 91
            height: 48
            text: qsTr("23")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
            color: "white"
        }
    }

}
