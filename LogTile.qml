import QtQuick
import QtQuick.Layouts

Item {
    id: root

    Rectangle {
        id: header
        color: "transparent"
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 10
        }
        height: 50

        RowLayout {
            Rectangle {
                width: 50
                height: 50
                Image {
                    anchors.fill: parent
                    source: "assets/icons/warning.png"
                    mipmap: true
                }
            }

            Text {
                text: "Powiadomienia"
            }
        }
    }

    Rectangle {
        color: "transparent"
        anchors {
            left: parent.left
            right: parent.right
            top: header.bottom
            bottom: parent.bottom
            margins: 10
        }

        ListView {
            anchors.fill: parent
            model: LogModel {}
            delegate: Item {
                id: myItem
                required property string type
                required property string content
                width: 180; height: 40
                Rectangle {
                    color: "grey"
                    opacity: 0.3
                }
                Row {
                    Image {
                        source: "assets/icons/warning.png"
                        mipmap: true
                        width: 30
                        height: 30
                    }
                    Text { text: myItem.content; color:"white" }
                }
            }
            spacing: 5
        }
    }
}
