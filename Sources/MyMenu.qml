import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import Qt.labs.settings 1.0
import "elements/main"

Drawer {
    width: 0.15 * parent.width
    height: parent.height

    ToolButton{
        id: backButtonToMenu
        action: menuAction
        width: parent.width
    }

    MyHSeparator{
        anchors.top: backButtonToMenu.bottom
    }

    /// *** New Project ***

    Action {
        id: newProjectAction
        text: "New Project"
        shortcut: "Ctrl+N"
        onTriggered: {
            stackView.push( "qrc:/pages/ProjectEditor.qml" )
            parent.close()
        }
    }

    ToolButton{
        id: toolButtonNewProject
        anchors.top: backButtonToMenu.bottom
        anchors.topMargin: 10
        width: parent.width
        action: newProjectAction
    }

    /// *** Open ***

    ToolButton{
        id: toolButtonOpen
        text: "Open"
        anchors.top: toolButtonNewProject.bottom
        anchors.topMargin: 10
        width: parent.width
    }

    ToolButton{
        id: toolButtonSave
        text: "Save"
        anchors.top: toolButtonOpen.bottom
        anchors.topMargin: 10
        width: parent.width
    }

    ToolButton{
        id: toolButtonSaveAs
        text: "Save As"
        anchors.top: toolButtonSave.bottom
        anchors.topMargin: 10
        width: parent.width
    }

    MyHSeparator{
        anchors.top: toolButtonSaveAs.bottom
    }
}
