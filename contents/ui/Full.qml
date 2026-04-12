import QtQml 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

Item {
    id: full

    AnimatedImage {
        id: gif

        width: parent.width
        height: parent.height

        source: plasmoid.configuration.gifPath
        playing: true
    }
}
