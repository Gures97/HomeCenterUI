import QtQuick
import com.company.WeatherApp
import QtQuick.Layouts

Item {
    id: root

    ColumnLayout {
        spacing: 10
        anchors.fill: parent
        anchors.margins: 10
        Text {
            id: titleText

            color: "#e0e1dd"

            text: "Aktualna pogoda"
            Layout.alignment: Qt.AlignHCenter

            font {
                pixelSize: 16
                bold: true
            }
        }
        Rectangle {
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Image {
                source: "assets/icons/cloudy.png"
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }

                fillMode: Image.PreserveAspectFit
                width: 100
                height: 100
            }
        }

        ColumnLayout
        {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Layout.alignment: Qt.AlignHCenter
            Text {
                id: tempText

                color: "#e0e1dd"

                Layout.alignment: Qt.AlignHCenter

                text: "Temperatura: " + (Math.round(WeatherApp.currentTemp * 100) / 100) + " °C"

                font {
                    pixelSize: 16
                    bold: true
                }
            }

            Text {
                id: humidText

                color: "#e0e1dd"

                text: "Wilgotnosć: " + WeatherApp.currentHumid + " %"

                horizontalAlignment: Text.AlignHCenter

                Layout.alignment: Qt.AlignHCenter

                font {
                    pixelSize: 16
                    bold: true
                }
            }
        }
    }
}
