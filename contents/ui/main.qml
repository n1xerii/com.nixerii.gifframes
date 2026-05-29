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

    Plasmoid.backgroundHints: setBackground()

    compactRepresentation: Compact {}
    fullRepresentation: Full {}

    function setBackground() {
        if (plasmoid.configuration.noBackground) {
            return PlasmaCore.Types.NoBackground
        }
        return PlasmaCore.Types.TranslucentBackground
    }

    function setFillMode() {
        switch (plasmoid.configuration.gifFillMode) {
            case 0:
                return Image.Stretch;
                break;
            case 1:
                return Image.PreserveAspectFit;
                break;
            case 2:
                return Image.PreserveAspectCrop;
                break;
            case 3:
                return Image.Tile;
                break;
            case 4:
                return Image.TileVertically;
                break;
            case 5:
                return Image.TileHorizontally;
                break;
            default:
                return Image.Stretch;
                break;
        }
    }
}
