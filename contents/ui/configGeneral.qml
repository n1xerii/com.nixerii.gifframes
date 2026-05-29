import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_gifPath: gifPath.text
    property alias cfg_gifSpeed: gifSpeed.text
    property alias cfg_gifPaused: gifPause.checked

    property alias cfg_gifFillMode: gifFillMode.currentIndex
    property alias cfg_gifFlipH: gifFlipH.checked
    property alias cfg_gifFlipV: gifFlipV.checked
    property alias cfg_noBackground: noBackground.checked
    property alias cfg_gifOpacity: gifOpacity.text


    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("Playback")
    }

    QQC2.TextField {
        id: gifPath

        Kirigami.FormData.label: i18n("GIF Path:")
        placeholderText: i18n("path/to/some.gif")
    }

    QQC2.TextField {
        id: gifSpeed

        placeholderText: i18n("default: 1.0")
        Kirigami.FormData.label: i18n("GIF Speed:")
    }
    QQC2.Button {
        id: gifResetSpeed

        text: qsTr("Reset")

        onClicked: {
            gifSpeed.text = i18n("1.0")
        }
    }

    QQC2.CheckBox {
        id: gifPause

        Kirigami.FormData.label: i18n("Paused:")
    }


    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("Appearance")
    }


    QQC2.ComboBox {
        id: gifFillMode
        model: ["Stretch (default)", "PreserveAspectFit", "PreserveAspectCrop", "Tile", "TileVertically", "TileHorizontally"]
    }
    QQC2.CheckBox {
        id: gifFlipH

        Kirigami.FormData.label: i18n("Flip Horizontally:")
    }
    QQC2.CheckBox {
        id: gifFlipV

        Kirigami.FormData.label: i18n("Flip Vertically:")
    }

    QQC2.CheckBox {
        id: noBackground

        Kirigami.FormData.label: i18n("Transparent:")
    }
    QQC2.TextField {
        id: gifOpacity

        placeholderText: i18n("default: 1.0")
        Kirigami.FormData.label: i18n("Opacity:")
    }
    QQC2.Button {
        id: gifResetOpacity

        text: qsTr("Reset")

        onClicked: {
            gifOpacity.text = i18n("1.0")
        }
    }
}
