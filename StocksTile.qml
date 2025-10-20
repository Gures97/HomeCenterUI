import QtQuick
import QtQuick.Layouts

Item {
    id: root

    ColumnLayout {

        anchors.fill: parent

        Text {
            id: titleText

            color: "#e0e1dd"

            text: "ETFSP500"

            font {
                pixelSize: 20
                bold: true
            }

            Layout.alignment: Qt.AlignHCenter

            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: percentText

            color: "darkgreen"

            text: "+1,23%"

            font {
                pixelSize: 30
                bold: true
            }

            Layout.alignment: Qt.AlignHCenter
        }

        RowLayout {
            id: stockInfo

            Layout.alignment: Qt.AlignHCenter
            spacing: 10

            ColumnLayout {
                id: minColumn

                Text {
                    text: "Min"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "245,70"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            ColumnLayout {
                id: currColumn

                Text {
                    text: "Aktualna"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "249,70"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            ColumnLayout {
                id: maxColumn

                Text {
                    text: "Max"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: "252,35"
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
    }
}
