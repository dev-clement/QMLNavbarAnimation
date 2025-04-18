import QtQuick
import QtQuick.Layouts
import NavbarAnimation

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Navbar animation")
    color: "#202020"

    RowLayout {
        anchors.centerIn: parent
        spacing: 20

        Tabbar {
            rectColor: "#8338ec"
            itemText: "Home"
        }

        Tabbar {
            rectColor: "#3a86ff"
            itemText: "About"
        }

        Tabbar {
            rectColor: "#ff006e"
            itemText: "Help"
        }
    }
}
