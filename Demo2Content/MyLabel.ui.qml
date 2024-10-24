import QtQuick 6.7

Text {
        id: label
        text: qsTr("Hello UntitledProject4")
        anchors.top: button.bottom
        font.family: Constants.font.family
        anchors.topMargin: -16
        anchors.horizontalCenterOffset: -11
        anchors.horizontalCenter: parent.horizontalCenter
        
        SequentialAnimation {
            id: animation
            
            ColorAnimation {
                id: colorAnimation1
                target: rectangle
                property: "color"
                to: "#2294c6"
                from: Constants.backgroundColor
            }
            
            ColorAnimation {
                id: colorAnimation2
                target: rectangle
                property: "color"
                to: Constants.backgroundColor
                from: "#2294c6"
            }
        }
    }
