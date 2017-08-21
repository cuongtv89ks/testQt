import QtQuick 2.0

Item {
    width: 400
    height: 300

    property alias dayText: day.text
    property alias hour1Text: hour1.text
    property alias min1Text: min1.text
    property alias ap1Text: ap1.text
    property alias event1Text: event1.text
    property alias icon1: pic1.source

    property alias hour2Text: hour2.text
    property alias min2Text: min2.text
    property alias ap2Text: ap2.text
    property alias event2Text: event2.text
    property alias icon2: pic2.source

    Text {
        id: day
        x: 32
        y: 40
        width: 127
        height: 56
        color: "#dfdfdf"
        text: qsTr("Today")
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30
    }

    Text {
        id: hour1
        x: 76
        y: 114
        width: 39
        height: 39
        color: "#ffffff"
        text: qsTr("7")
        font.weight: Font.Normal
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.pixelSize: 30
    }

    Text {
        id: min1
        x: 121
        y: 114
        width: 29
        height: 19
        color: "#ffffff"
        text: qsTr("00")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        id: ap1
        x: 121
        y: 134
        width: 29
        height: 19
        color: "#ffffff"
        text: qsTr("AM")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
    }

    Text {
        id: event1
        x: 165
        y: 114
        width: 161
        height: 39
        color: "#ffffff"
        text: qsTr("Seminar")
        fontSizeMode: Text.Fit
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pixelSize: 17
    }

    Image {
        id: pic1
        x: 338
        y: 114
        width: 49
        height: 45
        fillMode: Image.PreserveAspectFit
        source: "Image/todoList/alarm-1.png"
    }

    Text {
        id: hour2
        x: 76
        y: 178
        width: 39
        height: 39
        color: "#ffffff"
        text: qsTr("7")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pixelSize: 30
        font.weight: Font.Normal
    }

    Text {
        id: min2
        x: 121
        y: 178
        width: 29
        height: 19
        color: "#ffffff"
        text: qsTr("00")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
    }

    Text {
        id: ap2
        x: 121
        y: 198
        width: 29
        height: 19
        color: "#ffffff"
        text: qsTr("AM")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
    }

    Text {
        id: event2
        x: 165
        y: 178
        width: 161
        height: 39
        color: "#ffffff"
        text: qsTr("Seminar")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        wrapMode: Text.WordWrap
        font.pixelSize: 17
    }

    Image {
        id: pic2
        x: 338
        y: 178
        width: 49
        height: 45
        source: "Image/todoList/alarm-1.png"
        fillMode: Image.PreserveAspectFit
    }

}
