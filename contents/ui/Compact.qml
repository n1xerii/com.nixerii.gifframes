import QtQml 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

Item {
    id: compact

    AnimatedImage {
        id: gif

        width: parent.width
        height: parent.height

        source: plasmoid.configuration.gifPath
        playing: true

        //onAccepted: {
        //    widget.expanded = !widget.expanded
        //}
    }

    PlasmaComponents.Button {
        id: popupButton

        width: parent.width
        height: parent.height
        opacity: 0

        onClicked: {
            widget.expanded = !widget.expanded
        }
    }
}
