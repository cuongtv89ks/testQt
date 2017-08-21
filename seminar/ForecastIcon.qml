import QtQuick 2.0

Item {
    id: forecast
    width: 100
    height: 150

    property string day: "SUN"
    property string date: "8/6"
    property string weatherIcon: ""
    property string degree: "27/18"

    Rectangle {
        anchors.fill: parent
        opacity: 0.3
        color: "black"
        radius: 0.085
    }

    Text{
        id: dayText
        horizontalAlignment: Text.AlignHCenter
        width: forecast.width
        color: "#ffffff"
        text: forecast.day
        font.bold: true
        font.pointSize: 13
    }

    Text{
        id: dateText
        horizontalAlignment: Text.AlignHCenter
        width: forecast.width
        color: "#ffffff"
        text: forecast.date
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        font.bold: true
        font.pointSize: 12

        anchors.top: dayText.bottom
        anchors.topMargin: 5
    }

    Text{
        id: degreeText
        horizontalAlignment: Text.AlignHCenter
        width: forecast.width
        color: "#ffffff"
        text: forecast.degree
        font.bold: true
        font.pointSize: 13
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
    }

    WeatherIcon {
        id: weather
        x: 15
        y: 56
        width: 70
        height: 70
        weatherIcon: forecast.weatherIcon
    }
}
