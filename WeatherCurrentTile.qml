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

        Image {
            source: "assets/icons/cloudy.png"

            Layout.fillWidth: true
            Layout.fillHeight: true

            fillMode: Image.PreserveAspectFit
            width: 10
            height: 10
        }

        RowLayout
        {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Layout.alignment: Qt.AlignHCenter
            Text {
                id: tempText

                color: "#e0e1dd"

                text: (Math.round(WeatherApp.currentTemp * 100) / 100) + " °C"

                font {
                    pixelSize: 16
                    bold: true
                }
            }

            Text {
                id: humidText

                color: "#e0e1dd"

                text: "Wilg.: " + WeatherApp.currentHumid + " %"

                horizontalAlignment: Text.AlignHCenter

                font {
                    pixelSize: 16
                    bold: true
                }
            }
        }
    }
}
