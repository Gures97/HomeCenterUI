import QtQuick
import QtQuick.Layouts

Item {
    id: root

    ColumnLayout {

        anchors.fill: parent

        Text {
            id: titleText

            color: "#e0e1dd"

            text: "ESP32 module"

            font {
                pixelSize: 18
                bold: true
            }

            Layout.alignment: Qt.AlignHCenter

            horizontalAlignment: Text.AlignHCenter
        }

        RowLayout {
            id: espInfo

            Layout.alignment: Qt.AlignHCenter
            spacing: 10

            ColumnLayout {
                id: tempColumn

                Text {
                    text: "Temp"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "21°C"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            Rectangle {
                width: 2
                height: 40
                color: "#e0e1dd"
            }

            ColumnLayout {
                id: currColumn

                Text {
                    text: "Press"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "1020 hPa"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            Rectangle {
                width: 2
                height: 40
                color: "#e0e1dd"
            }


            ColumnLayout {
                id: maxColumn

                Text {
                    text: "Humid"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "69%"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
    }
}
