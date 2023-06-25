import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import Qt.labs.settings 1.0

ApplicationWindow {
    id: window
    visible: true
    visibility: ApplicationWindow.FullScreen

    MyToolBox{
        id: toolBox
        width: parent.width * 0.15
        height: parent.height
    }

    StackView {
        id: stackView
        anchors.left: toolBox.right
        width: parent.width * 0.85
        height: parent.height
    }

    Action {
        id: menuAction
        icon.name: drawer.opened ? "back" : "drawer"
        shortcut: "Esc"
        onTriggered: {
            if ( drawer.opened )
            {
                drawer.close()
            }
            else
            {
                drawer.open()
            }
        }
    }

    header: ToolBar {
        Material.foreground: "white"

        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                action: menuAction
            }

            Label {
                id: titleLabel
                text: "FBQL Editor"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    MyMenu{
        id: drawer
    }
}
