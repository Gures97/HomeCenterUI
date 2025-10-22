import QtQuick
import QtQuick.Layouts

Item {
    id: root
    Rectangle {
        id: sideBar

        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

        width: 50
        color: "#0d1b2a"

        ImageButton {
            id: menuButton

            anchors {
                top: parent.top
                right: parent.right
                margins: 10
            }

            height: 30
            width: 30

            source: "assets/icons/menu.png"

            onClicked: { sideBar.width = sideBar.width === 50 ? 200 : 50 }
        }

        ColumnLayout {
            id: menuButtons

            anchors {
                left: parent.left
                right: parent.right
                verticalCenter: parent.verticalCenter
                margins: 10
            }

            spacing: 10

            ImageButton {
                id: weatherButton

                source: "assets/icons/cloudy.png"

                width: 30
                height: 30

                onClicked: {}
            }
            ImageButton {
                id: connectionButton

                source: "assets/icons/wifi.png"

                width: 30
                height: 30

                onClicked: {}
            }
            ImageButton {
                id: settingsButton

                source: "assets/icons/setting.png"

                width: 30
                height: 30

                onClicked: {}
            }
        }

        Behavior on width {
            NumberAnimation { duration: 200}
        }
    }
}
