import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_gifPath: gifPath.text
    property alias cfg_gifSpeed: gifSpeed.value

    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("GIF Settings")
    }

    QQC2.TextField {
        id: gifPath
        Kirigami.FormData.label: i18n("GIF Path:")
        placeholderText: i18n("path/to/some.gif")
    }

    QQC2.Slider {
        id: gifSpeed

        from: 0.1
        value: 1.0
        to: 2.0

        Kirigami.FormData.label: i18n("GIF Speed:")
    }
    QQC2.Button {
        id: resetDefaultSpeedButton

        text: qsTr("Reset")
        onClicked: {
            gifSpeed.value = 1.0
        }
    }
}
