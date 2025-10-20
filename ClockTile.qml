import QtQuick
import com.company.MiscInfo

Item {
    id: root

    Text {
        id: bigClockText

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            verticalCenterOffset: -30
        }
        color: "#e0e1dd"

        text: Qt.formatDateTime(MiscInfo.now, "hh:mm")

        font {
            pixelSize: 30
            bold: true
        }
    }

    Text {
        id: dateText

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            verticalCenterOffset: 30
        }
        color: "#e0e1dd"

        text: Qt.formatDateTime(MiscInfo.now, "dd MMMM yyyy\n(dddd)")

        horizontalAlignment: Text.AlignHCenter

        font {
            pixelSize: 16
            bold: true
        }
    }
}
