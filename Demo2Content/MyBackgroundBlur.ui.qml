import QtQuick 6.7

Rectangle {
        id: backgroundBlur
        width: 470
        height: 80
        opacity: 1
        color: "#586e2a2a"
        radius: 8
        border.width: 0
        
        Text {
            id: backgroundBlurText
            x: 31
            y: 22
            text: qsTr("This is text that will be blured")
            font.pixelSize: 32
            horizontalAlignment: Text.AlignLeft
        }
    }
