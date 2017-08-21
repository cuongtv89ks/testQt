import QtQuick 2.0
import "Image/Simple Weather Icons" as WeatherIcons
import QtQuick.Layouts 1.0

Item {
    id: item1
    width: 400
    height: 300

    RowLayout {
        x: 0
        y: 0

        Item {
            id: item2
            Layout.preferredWidth: 200

            Text {
                id: text1
                x: 60
                y: 100
                color: "#fdfdfd"
                text: qsTr("30°")
                fontSizeMode: Text.Fit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 70
            }
        }

        Item {
            id: item3
            Layout.preferredWidth: 197

            Image {
                id: image
                height: 157
                fillMode: Image.PreserveAspectFit
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 1
                anchors.right: parent.right
                anchors.rightMargin: 0
                source: "Image/Simple Weather Icons/30.png"
            }

            Text {
                id: text2
                width: 104
                height: 61
                color: "#ffffff"
                text: qsTr("11E")
                anchors.top: image.bottom
                anchors.topMargin: 10
                fontSizeMode: Text.Fit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
                font.pixelSize: 30
            }

            Text {
                id: text3
                x: -1
                y: -1
                width: 104
                height: 61
                color: "#ffffff"
                text: qsTr("5:27")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                fontSizeMode: Text.Fit
                anchors.top: image.bottom
                anchors.topMargin: 77
                font.pixelSize: 30
                anchors.leftMargin: 0
            }

            Image {
                id: image2
                x: 110
                y: 230
                width: 85
                height: 71
                fillMode: Image.PreserveAspectFit
                anchors.right: parent.right
                anchors.rightMargin: 2
                source: "Image/Simple Weather Icons/36.png"
            }
        }
    }

    Image {
        id: image1
        x: 307
        y: 160
        width: 85
        height: 71
        fillMode: Image.PreserveAspectFit
        anchors.right: parent.right
        anchors.rightMargin: 0
        source: "Image/Simple Weather Icons/21.png"
    }
}
