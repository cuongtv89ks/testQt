import QtQuick 2.0
import "."
Item {

    property color viewColor : "#202227"
    property color textColor: "#ffffff"

    Rectangle {
        id: viewContainer
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.bottom: addressTypeButton.top
        anchors.bottomMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30

        color: viewColor
        radius: 0.2

        Text {
            id: title
            width: parent.width
            height: 100
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: textColor
            font.pixelSize: 30
            text: qsTr("FOUND DEVICES")

            BottomLine {
                height: 1;
                width: parent.width
                color: "#898989"
            }
        }
    }

    MyButton {
        id: addressTypeButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: searchButton.top
        anchors.bottomMargin: 15
        width: title.width
        height: 100
        state: "public"
        onClicked: state == "public" ? state = "random" : state = "public"

        states: [
            State {
                name: "public"
                PropertyChanges {
                    target: addressTypeText; text: qsTr("Public Address")
                }
            },

            State {
                name: "random"
                PropertyChanges {
                    target: addressTypeText; text: qsTr("Random Address")
                }
            }
        ]
        Text {
            id: addressTypeText
            anchors.centerIn: parent
            font.pixelSize: 30
            color: textColor
        }
    }

    MyButton {
        id: searchButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        height: 100
        Text {
            anchors.centerIn: parent
            font.pixelSize: 30
            text: qsTr("START SEARCH")
            color: textColor
        }
    }
}
