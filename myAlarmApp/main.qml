import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 350
    height: 480
    title: qsTr("Hello World")

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

    function alarmCheck(){
        if (hours === hoursAlarm && minutes === minutesAlarm){
            //console.log("Alarm")
            alarm.alarmStart()
            timerAlarmCheck.stop()
        }
    }

    Timer {
        interval: 500; running: true; repeat: true;
        onTriggered: root.timeChanged()
    }

    Timer {
        id: timerAlarmCheck
        interval: 1000; running: true; repeat: true;
        onTriggered: root.alarmCheck()
    }

    Column {
        Rectangle {
            width: 300
            height: 250
            id: digitalClockView
            Text {
                id: time
                anchors.centerIn: parent
                text: hours + ":" + minutes
                color: "black"
                font.pixelSize: 70
            }

            Text {
                anchors.left: time.right
                anchors.top: time.top
                anchors.topMargin: 10
                text: " " + am
                font.pixelSize: 30
                color: "black"
            }
        }

        Rectangle {
            width: 300
            height: 250
            id: alarmSet
            GridLayout {

                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 10
                columns: 2
                rows: 4
                rowSpacing: 10
                columnSpacing: 10


                Text {
                    text: qsTr("hour:")
                }
                TextField {
                    id: hourSet
                }
                Text {
                    text: qsTr("minute:")
                }
                TextField {
                    id: minSet
                }
                Button{
                    height: 40
                    Layout.fillWidth: true
                    text: qsTr("Set Alarm")
                    Layout.columnSpan: 2

                    onClicked: {
                        hoursAlarm = hourSet.text
                        //console.log(hoursAlarm)
                        minutesAlarm = minSet.text
                        //console.log(minutesAlarm)
                    }
                }

                Button {
                    height: 40
                    width: alarmSet.width / 2
                    text: qsTr("Dismission")
                    onClicked: {
                        alarm.alarmStop()
                    }
                }

                Button {
                    height: 40
                    Layout.fillWidth: true
                    text: qsTr("Snooze")
                    onClicked: {
                        alarm.alarmSnooze()
                    }
                }

            }

        }

    }
}
