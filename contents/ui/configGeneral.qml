import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_gifPath: gifPath.text

    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("GIF Settings")
    }

    QQC2.TextField {
        id: gifPath
        Kirigami.FormData.label: i18n("GIF Path:")
        placeholderText: i18n("path/to/some.gif")
    }
}
