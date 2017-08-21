import QtQuick 2.0

Rectangle {
    id: titleBar
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 100
    color: "#202227"

    property  var __titles: ["CONNECT", "MEASURE", "STATS"]
    property int currentIndex: 0

    signal titleClicked(int index)

    Repeater {
        model: 3
        Text {
            width: titleBar.width / 3
            height: titleBar.height
            x: index * width
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: __titles[index]
            font.pixelSize: 30
            color: titleBar.currentIndex === index ? "#ffffff" : "#777777"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    //titleBar.currentIndex = index
                    titleClicked(index)
                }
            }
        }
    }

    Item {
        anchors.bottom: parent.bottom
        width: parent.width / 3
        height: parent.height
        x: currentIndex * width

        BottomLine{
        }

        Behavior on x { NumberAnimation {duration: 200}}
    }

}
