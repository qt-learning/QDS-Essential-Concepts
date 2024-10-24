import QtQuick 6.7
import QtQuick.Controls 6.7

Button {
    id: button
    visible: true
    text: qsTr("Press me")
    anchors.verticalCenter: parent.verticalCenter
    flat: false
    checkable: true
    anchors.horizontalCenter: parent.horizontalCenter

        Connections {
            target: button
            onClicked: animation.start()
        }
    }
