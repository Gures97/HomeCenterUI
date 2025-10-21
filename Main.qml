import QtQuick
import com.company.MiscInfo
import QtQuick.Layouts
import com.company.WeatherApp

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("HomeCenter")

    color: "#415a77"

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
                left: parent.left
                right: parent.right
                margins: 10
            }

            height: 40

            source: "assets/icons/menu.png"

            onClicked: {}
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

                Layout.fillWidth: true
                height: 30

                onClicked: {}
            }
            ImageButton {
                id: connectionButton

                source: "assets/icons/wifi.png"

                Layout.fillWidth: true
                height: 30

                onClicked: {}
            }
            ImageButton {
                id: settingsButton

                source: "assets/icons/setting.png"

                Layout.fillWidth: true
                height: 30

                onClicked: {}
            }
        }
    }

    Rectangle {
        id: topbar

        anchors {
            top: parent.top
            right: parent.right
            left: sideBar.right
        }

        height: 20
        color: "#1b263b"

        Text {
            id: titleText

            anchors {
                left: parent.left
                top: parent.top
                bottom: parent.bottom
                margins: 2
            }

            text: "Main screen"
            color: "#e0e1dd"

            font {
                bold: true
                family: "Tahoma"
            }
        }

        Text {
            id: dateTime

            anchors {
                right: parent.right
                top: parent.top
                bottom: parent.bottom
                margins: 2
            }

            text: Qt.formatDateTime(MiscInfo.now, "dd.MM.yyyy\thh:mm:ss")
            color: "#e0e1dd"

            font {
                bold: true
                family: "Tahoma"
            }
        }
    }

    GridLayout {
        id: mainGridLayout

        anchors {
            left: sideBar.right
            right: parent.right
            top: topbar.bottom
            bottom: parent.bottom
            margins: 20
        }

        uniformCellHeights: true
        uniformCellWidths: true

        columns: 3
        rows: 2
        columnSpacing: 10
        rowSpacing: 10

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 0
            Layout.column: 0
            color: "#1b263b"

            ClockTile {
                anchors.fill: parent
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 0
            Layout.column: 1


            color: "#1b263b"

            WeatherCurrentTile {
                anchors.fill: parent
            }

            MouseArea {
                id: buttonMouseArea

                anchors.fill: parent

                hoverEnabled: true

                onClicked: {
                    WeatherApp.checkCurrentWeather()
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 0
            Layout.column: 2
            color: "#1b263b"

            WeatherBmeTile {
                anchors.fill: parent
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            Layout.column: 0
            color: "#1b263b"

            StocksTile {
                id: stocksTile
                anchors.fill: parent
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            Layout.column: 1
            color: "#1b263b"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            Layout.column: 2
            color: "#1b263b"

            LogTile {
                anchors.fill: parent
            }
        }
    }
}
