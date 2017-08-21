import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    width: 500
    height: 240
    id: bigWeatherIcon

    property string weatherIcon: ""
    property string humidity: "60"
    property string windSpeed: "3"
    property string pressure: "3"
    property string visibility: "32"
    property string location: "Daegu"
    property string condition: "Showers"
    property string degree: "30"
    property string sunrise: "7:6 am"
    property string sunset: "11:2 pm"

    Rectangle {
        anchors.fill: parent
        opacity: 0.3
        color: "black"
        radius: 0.085
    }

    Text {
        id: degree
        x: 377
        width: 104
        height: 78
        color: "#ffffff"
        text: bigWeatherIcon.degree + qsTr("°C")
        font.bold: true
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.right: parent.right
        anchors.rightMargin: 19
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 35
    }

    WeatherIcon {
        weatherIcon: bigWeatherIcon.weatherIcon
        id: icon
        x: 207
        width: 160
        height: 111
        anchors.top: parent.top
        anchors.topMargin: 9
    }

    Text {
        id: location
        width: 161
        height: 41
        color: "#ffffff"
        text: bigWeatherIcon.location
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 21
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 35
    }

    Text {
        id: condition
        width: 186
        height: 41
        color: "#ffffff"
        text: bigWeatherIcon.condition
        anchors.top: parent.top
        anchors.topMargin: 78
        anchors.left: parent.left
        anchors.leftMargin: 8
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    RowLayout {
        x: 28
        width: 472
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.top: icon.bottom
        anchors.topMargin: 13
        clip: false

        ColumnLayout {

            Image {
                id: image5
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/sunrise.png"
            }

            Text {
                id: text9
                color: "#ffffff"
                text: qsTr("sunrise")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: sunrise
                color: "#ffffff"
                text: bigWeatherIcon.sunrise
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }

        ColumnLayout {

            Image {
                id: image4
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/sunset.png"
            }

            Text {
                id: text8
                color: "#ffffff"
                text: qsTr("sunset")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: sunset
                color: "#ffffff"
                text: bigWeatherIcon.sunset
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }

        ColumnLayout {

            Image {
                id: image
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/humidity.png"
            }

            Text {
                id: text4
                color: "#ffffff"
                text: qsTr("humidity")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: humidity
                color: "#ffffff"
                text: bigWeatherIcon.humidity + qsTr(" %")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }

        ColumnLayout {

            Image {
                id: image1
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/wind.png"
            }

            Text {
                id: text5
                color: "#ffffff"
                text: qsTr("wind")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: wind
                color: "#ffffff"
                text: bigWeatherIcon.windSpeed + qsTr(" mph")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }

        ColumnLayout {

            Image {
                id: image2
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/pressure.png"
            }

            Text {
                id: text6
                color: "#ffffff"
                text: qsTr("pressure")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: pressure
                color: "#ffffff"
                text: bigWeatherIcon.pressure + qsTr(" in")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }

        ColumnLayout {

            Image {
                id: image3
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                source: "images/icons/visibility.png"
            }

            Text {
                id: text7
                color: "#ffffff"
                text: qsTr("visib")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }

            Text {
                id: visibility
                color: "#ffffff"
                text: bigWeatherIcon.visibility + qsTr(" mi")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 50
                font.pixelSize: 12
            }
        }
    }

}
