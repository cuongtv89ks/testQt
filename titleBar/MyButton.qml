import QtQuick 2.0

Rectangle {
    id: button

    property color baseColor: "#202227" // base color
    property color disableColor: "#555555" // disable color
    property color pressedColor: "#6ccaf2" // button pressed color

    color: baseColor
    onEnabledChanged: checkColor()
    radius: 0.2
    signal clicked()

    function checkColor(){
        if (!button.enabled) {
            button.color = disableColor
        } else {
            if (mouseArea.containsPress) // pressed && containsMouse
                button.color = pressedColor
            else
                button.color = baseColor
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: checkColor()
        onReleased: checkColor()
        onClicked: {
            checkColor()
            button.clicked()
        }
    }

}
