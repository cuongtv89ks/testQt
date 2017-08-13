import QtQuick 2.0
import QtQuick.Window 2.2
import "Image"

Window {
    id: root
    visible: true
    width: 1280
    height: 1024
    title: qsTr("IoT Artik")

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
        onTriggered: root.timeChanged()
    }


    Image {
        anchors.fill: parent
        id: backgroudPicture
        source: "Image/2.jpg"
    }

    Item {
        width: 400
        height: parent.height
        id: digitalClockView

        Rectangle {
            anchors.fill: parent
            opacity: 0.2
            color: "black"
        }

        Text {
            id: time
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            text: hours + ":" + minutes
            color: "white"
            font.pixelSize: 70
        }

        Text {
            anchors.left: time.right
            anchors.top: time.top
            anchors.topMargin: 10
            text: " " + am
            font.pixelSize: 30
            color: "white"
        }

        Text {
            id: date
            anchors.top: time.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            text: gettime
            font.pixelSize: 30
            color: "white"
        }

        ListView {
            anchors.top: date.bottom
            orientation: ListView.Vertical
            anchors.bottom: parent.bottom
            cacheBuffer: 2000
            snapMode: ListView.SnapOneItem
            highlightRangeMode: ListView.ApplyRange
            spacing: 3
            //clip: true
            //force: true

            delegate: ToDoList { dayText: dayLabel;
                hour1Text: hour1Label; min1Text: min1Label; ap1Text: ap1Label; event1Text: event1Label; icon1: icon1Label;
                hour2Text: hour2Label; min2Text: min2Label; ap2Text: ap2Label; event2Text: event1Label; icon2: icon1Label }

            model: ListModel {
                ListElement { dayLabel: "TODAY";
                    hour1Label: "11"; min1Label: "00"; ap1Label: "AM"; event1Label: "Seminar"; icon1Label: "Image/todoList/alarm-1.png";
                    hour2Label: "5"; min2Label: "00"; ap2Label: "PM"; event2Label: "Exercise"; icon2Label: "Image/todoList/dislike-1.png" }
                ListElement { dayLabel: "SAT";
                    hour1Label: "9"; min1Label: "00"; ap1Label: "AM"; event1Label: "Play Football"; icon1Label: "Image/todoList/star.png";
                    hour2Label: "3"; min2Label: "00"; ap2Label: "PM"; event2Label: "Linh Visits"; icon2Label: "Image/todoList/time.png" }
                ListElement { dayLabel: "SUN";
                    hour1Label: "8"; min1Label: "00"; ap1Label: "AM"; event1Label: "Bo Wedding"; icon1Label: "Image/todoList/video-camera-1.png";
                    hour2Label: "5"; min2Label: "00"; ap2Label: "PM"; event2Label: "Dinner with Friends"; icon2Label: "Image/todoList/music-player-2.png" }
            }
        }
    }

    Item {
        id: item1
        x: 523
        y: 8
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 816
        anchors.right: parent.right
        anchors.rightMargin: 523
        anchors.left: parent.left
        anchors.leftMargin: 523

        Rectangle {
            id: rectangle
            color: "#000000"
            radius: 5
            border.width: 0
            opacity: 0.2
            anchors.fill: parent
        }

        Text {
            id: jsonData
            x: 0
            y: 0
            color: "#ffffff"
            text: qsTr("Text")
            wrapMode: Text.WordWrap
            anchors.fill: parent
            font.pixelSize: 15
            MouseArea {
                anchors.fill: parent
                onClicked:  {

                }
            }
        }
    }

    Item {

        width: 400
        height: parent.height
        anchors.right: parent.right

        Rectangle {
            anchors.fill: parent
            opacity: 0.3
            color: "black"

        }

        BigWeatherIcon {
            id: bigIcon
        }

        ListView {
            anchors.top: bigIcon.bottom
            orientation: ListView.Vertical
            anchors.bottom: parent.bottom
            cacheBuffer: 2000
            snapMode: ListView.SnapOneItem
            highlightRangeMode: ListView.ApplyRange
            spacing: 3
            //clip: true
            //force: true

            delegate: SmallWeatherIcon { day: dayName; sourceImage: sourceIcon; hightTemp: hightText; lowTemp: lowText }
            model: ListModel {
                ListElement { dayName: "TODAY"; sourceIcon: "Image/Simple Weather Icons/30.png"; hightText: "34"; lowText: "23" }
                ListElement { dayName: "SAT"; sourceIcon: "Image/Simple Weather Icons/17.png"; hightText: "33"; lowText: "23" }
                ListElement { dayName: "SUN"; sourceIcon: "Image/Simple Weather Icons/30.png"; hightText: "34"; lowText: "25" }
                ListElement { dayName: "MON"; sourceIcon: "Image/Simple Weather Icons/17.png"; hightText: "31"; lowText: "24" }
                ListElement { dayName: "TUE"; sourceIcon: "Image/Simple Weather Icons/30.png"; hightText: "32"; lowText: "23" }
                ListElement { dayName: "WED"; sourceIcon: "Image/Simple Weather Icons/0.png"; hightText: "34"; lowText: "24" }
                ListElement { dayName: "THU"; sourceIcon: "Image/Simple Weather Icons/0.png"; hightText: "34"; lowText: "24" }
                ListElement { dayName: "FRI"; sourceIcon: "Image/Simple Weather Icons/0.png"; hightText: "34"; lowText: "24" }
            }
        }
    }
}
