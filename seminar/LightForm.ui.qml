import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0

PanelBackground {
    id: panelBackground
    Material.theme: Material.Dark
    Material.accent: Material.DeepOrange
    width: 550
    height: 480
    title: "Lights"

    GridLayout {
        x: 95
        y: 148
        width: 382
        height: 195
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 3
        columns: 2

        Switch {
            id: switch1
            text: qsTr("Reading Lamp")
        }

        Slider {
            id: slider
            value: 0.5
        }

        Switch {
            id: switch2
            text: qsTr("Working Lamp")
        }

        Slider {
            id: slider1
            value: 0.5
        }

        Switch {
            id: switch3
            text: qsTr("Bath Lamp")
        }

        Slider {
            id: slider2
            value: 0.5
        }
    }
}
