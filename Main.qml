import QtQuick
import com.company.MiscInfo
import QtQuick.Layouts
import com.company.WeatherApp

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("HomeCenter")

    Rectangle {
        anchors.fill: parent
        color: "#415a77"
        gradient: Gradient {
                 GradientStop { position: 1.0; color: Qt.lighter("#415a77") }
                 GradientStop { position: 0.5; color: "#415a77" }
                 GradientStop { position: 0.0; color: Qt.darker("#415a77") }
             }
    }




    SideBar {
        id: sideBar

        width: 50
        height: parent.height
        z: 1
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
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"

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
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"

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
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"

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
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"

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
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            Layout.column: 2
            color: "#1b263b"
            gradient: Gradient {
                     GradientStop { position: 1.0; color: Qt.lighter("#1b263b") }
                     GradientStop { position: 0.5; color: "#1b263b" }
                     GradientStop { position: 0.0; color: Qt.darker("#1b263b") }
                 }
            border.color: "#e0e1dd"

            LogTile {
                anchors.fill: parent
            }
        }
    }
}
