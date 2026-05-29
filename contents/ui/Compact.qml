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
        opacity: parseFloat(plasmoid.configuration.gifOpacity) || 1.0

        source: plasmoid.configuration.gifPath
        speed: parseFloat(plasmoid.configuration.gifSpeed) || 1.0
        playing: !plasmoid.configuration.gifPaused

        fillMode: widget.setFillMode()
        mirror: plasmoid.configuration.gifFlipH
        mirrorVertically: plasmoid.configuration.gifFlipV
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
