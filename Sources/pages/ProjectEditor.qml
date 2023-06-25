import QtQuick 2.15
import QtQuick.Controls
import "../blocks"

Rectangle{
    anchors.fill: parent
    color: "green"

    MouseArea{
        id: mArea
        anchors.fill: parent
        onClicked: ( mouse ) => {
            var component = Qt.createComponent( "Block.qml" );
            if (component.status == Component.Ready) {
                var childRec = component.createObject(mainRec);
                childRec.x = mArea.mouseX - (childRec.width / 2);
                childRec.y = mArea.mouseY - (childRec.height / 2);
            }
        }
    }
}
