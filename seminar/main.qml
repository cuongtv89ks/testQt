import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 800
    height: 480
    title: qsTr("Home Automation")

    StackLayout {
        id: swipeView
        anchors.left: slideBar.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        currentIndex: tabBar.currentIndex

        Light {
            anchors.fill: parent
        }

        SensorsDisplay{
            anchors.fill: parent
        }

        Weather {
        }
    }

    TabBar {
        id: tabBar
        anchors.right: parent.right
        anchors.left: slideBar.right
        anchors.bottom: parent.bottom
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Lights")
        }
        TabButton {
            text: qsTr("Sensor Inf")
        }

        TabButton {
            text: qsTr("Weather")
        }
    }

    SlideBar {
        id: slideBar
        x: 0
        y: 0
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }
}
