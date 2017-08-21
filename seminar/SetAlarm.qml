import QtQuick 2.0
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle2
    color: "#232323"
    height: 100
    width: 250

    Flow {
    }

    RowLayout {
        x: 16
        y: 46
        width: 226
        height: 74
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Rectangle {
            id: rectangle3
            color: "#ffffff"
            Layout.preferredHeight: 74
            Layout.preferredWidth: 69

            ListView {
                snapMode: ListView.NoSnap
                anchors.fill: parent

                clip: true

                model: 12

                delegate: hourNumber
            }

            Component {
                id: hourNumber
                Text {
                    anchors.fill: rectangle3
                    text: index
                    fontSizeMode: Text.Fit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "black"
                    font.pixelSize: 50
                }
            }
        }

        Rectangle {
            id: rectangle1
            color: "#ffffff"
            Layout.preferredHeight: 74
            Layout.preferredWidth: 69

            ListView {
                snapMode: ListView.SnapOneItem
                anchors.fill: parent

                clip: true

                model: 60

                delegate: minNumber
            }

            Component {
                id: minNumber
                Text {
                    anchors.fill: rectangle1
                    text: index
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "black"
                    font.pixelSize: 50
                }
            }
        }

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("am")
            Layout.preferredHeight: 45
            Layout.preferredWidth: 55
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 25
        }
    }



}
