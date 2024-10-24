

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import Demo2
import QtQuick.Studio.DesignEffects

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    MyButton {
        id: button
        width: 310
        height: 85
        visible: true
        text: "Button that will have blured text"
        highlighted: false
        flat: false
        anchors.verticalCenterOffset: 21
        anchors.horizontalCenterOffset: 304
        clip: false
        rotation: 0
    }

    Rectangle {
        id: backgroundBlur
        x: 744
        y: 460
        width: 200
        height: 200
        opacity: 1
        color: "#4032d0dd"
        radius: 24
        border.width: 0

        DesignEffect {
            backgroundBlurVisible: true
            layerBlurVisible: false
            backgroundBlurRadius: 10
            backgroundLayer: button
        }
    }

    Rectangle {
        id: layerBlur
        x: 433
        y: 460
        width: 200
        height: 200
        opacity: 1
        visible: true
        color: "#40e06868"
        radius: 24
        clip: false

        DesignEffect {
            backgroundBlurVisible: false
            layerBlurRadius: 10
            layerBlurVisible: true
        }

        Text {
            id: text1
            x: 8
            y: 39
            width: 185
            height: 122
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'.AppleSystemUIFont'; font-size:13pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Ageo'; font-size:48pt;\">Layer</span></p>\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Ageo'; font-size:48pt;\">Blur</span></p></body></html>"
            font.pixelSize: 72
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            font.bold: false
        }
    }

    Rectangle {
        id: shadowDemoNewName
        x: 112
        y: 460
        width: 200
        height: 200
        opacity: 1
        color: "#0332d0dd"
        radius: 24
        border.width: 0
        scale: 1
        DesignEffect {
            backgroundBlurVisible: false
            layerBlurVisible: false
            effects: [
                DesignDropShadow {
                    showBehind: false
                    spread: 2
                    blur: 8
                }
            ]
            backgroundLayer: button
            backgroundBlurRadius: 10
        }
    }

    states: [
        State {
            name: "clicked"
            when: button.checked
        }
    ]
}
