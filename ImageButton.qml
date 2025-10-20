import QtQuick

Item {
    id:root

    property alias source: background.source

    signal clicked()

    Image {
        id: background
        anchors.fill: parent
        mipmap: true
    }

    MouseArea {
        id: buttonMouseArea

        anchors.fill: parent

        hoverEnabled: true

        onClicked: {
            root.clicked()
        }
    }
}
