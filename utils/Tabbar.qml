import QtQuick
import QtQuick.Effects

Item {
    id: control
    width: 150
    height: 80

    property color rectColor: "#234543"
    property string itemText: ""

    RectangularShadow {
        id: rectangularShadow
        anchors.fill: baseRectangle
        blur: 8
        spread: 4
        radius: baseRectangle.radius
        opacity: mouseArea.containsMouse ? 1 : 0
        color: Qt.lighter(baseRectangle.color, 1.2)

        Behavior on opacity {
            NumberAnimation {
                target: rectangularShadow
                property: "opacity"
                duration: 600
                easing.type: Easing.InOutQuad
            }
        }
    }

    Rectangle {
        id: baseRectangle
        anchors.centerIn: parent

        width: parent.width - 10
        height: parent.height - 10
        radius: 10


        color: mouseArea.containsMouse ? control.rectColor : "#202020"

        Text {
            anchors.centerIn: parent
            text: control.itemText

            font {
                pointSize: 15
                weight: Font.DemiBold
            }
            color: "#fafafa"
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
        }

        Behavior on color {
            ColorAnimation {
                duration: 600
            }
        }
    }
}
