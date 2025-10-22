import QtQuick
import QtQuick.Layouts
import com.company.StocksApp

Item {
    id: root

    function doubleToString(value){
        return "" + (Math.round(value * 100) / 100)
    }

    ColumnLayout {

        anchors.fill: parent

        Text {
            id: titleText

            color: "#e0e1dd"

            text: StocksApp.currentStockName

            font {
                pixelSize: 20
                bold: true
            }

            Layout.alignment: Qt.AlignHCenter

            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: percentText

            color: (StocksApp.currentStockChange > 0 ? "darkgreen" : "darkred")

            text: (StocksApp.currentStockChange > 0 ? "+" : "") + doubleToString(StocksApp.currentStockChange) + "%"

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
                    text: doubleToString(StocksApp.currentStockMin)
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
                    text: doubleToString(StocksApp.currentStockValue)
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
                    text: doubleToString(StocksApp.currentStockMax)
                    color: "#e0e1dd"
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
    }
}
