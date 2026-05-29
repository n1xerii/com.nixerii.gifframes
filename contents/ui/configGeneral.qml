import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_gifPath: gifPath.text
    property alias cfg_gifSpeed: gifSpeed.text
    property alias cfg_gifPaused: gifPause.checked
    property alias cfg_noBackground: noBackground.checked

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
        Kirigami.FormData.label: i18n(gifSpeed.value.toFixed(1))

        onClicked: {
            gifSpeed.text = "1.0"
        }
    }

    QQC2.CheckBox {
        id: gifPause

        Kirigami.FormData.label: i18n("Paused:")
    }


    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("Background")
    }


    QQC2.CheckBox {
        id: noBackground

        Kirigami.FormData.label: i18n("Transparent:")
    }
}
