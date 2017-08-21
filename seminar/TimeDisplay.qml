import QtQuick 2.0

Item {
    id: timeDisplay
    width: parent.width
    height: 400

    property int hours
    property int minutes
    property int seconds
    property string month
    property int year
    property int days
    property string day
    property string am: "AM"
    property string gettime
    //property type name: value

    property int hoursAlarm
    property int minutesAlarm

    function timeChanged(){
        var date = new Date;
        hours = date.getHours();
        if (hours >= 12) {
            hours = hours - 12;
            am = "PM"
        }
        minutes = date.getMinutes();

        seconds = date.getSeconds();

        year = date.getFullYear();
        month = date.getMonth() + 1;
        days = date.getDate();
        day = date.getDay();

        gettime = date.toDateString();
    }

    Timer {
        interval: 500; running: true; repeat: true;
        onTriggered: timeDisplay.timeChanged()
    }

    Text {
        id: time
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        text: hours + ":" + minutes
        color: "orange"
        font.pixelSize: 50
    }

    Text {
        anchors.left: time.right
        anchors.top: time.top
        anchors.topMargin: 10
        text: " " + am
        font.pixelSize: 25
        color: "orange"
    }

    Text {
        id: date
        anchors.top: time.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: gettime
        font.pixelSize: 25
        color: "orange"
    }
}
