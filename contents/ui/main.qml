import QtQml 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    id: widget

    Plasmoid.icon: 'image-gif'

    width: 100
    height: 100

    Plasmoid.backgroundHints: getBackground()

    compactRepresentation: Compact {}
    fullRepresentation: Full {}

    function getBackground() {
        if (plasmoid.configuration.noBackground) {
            return PlasmaCore.Types.NoBackground
        }
        return PlasmaCore.Types.TranslucentBackground
    }
}
