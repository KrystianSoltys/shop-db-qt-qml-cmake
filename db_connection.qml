import QtQuick 2.12
import QtQuick.Layouts 1.2
import QtQuick.Controls


Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    ColumnLayout{
        spacing: 2
        x: 50;
        y: 30;

        Text
        {
            Layout.alignment: Qt.AlignCenter
            text: "Connect do database (:"
            font.pointSize: 36;
            font.bold: true
            Layout.bottomMargin: 30;
        }

        RowLayout
        {
            id: rowHost
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: 500
            Layout.preferredHeight: 40

            Text
            {
                font.bold: true;
                text: "Host:"
                font.family: "Arial"
            }

            Rectangle
            {
                Layout.alignment: Qt.AlignRight
                id: recHost
                color: "grey"
                width: 400
                height: 40

                TextInput
                {
                    x:5
                    id: editHost
                    font.pointSize: 20;
                    width: recHost.width
                    KeyNavigation.tab: editUser
                    KeyNavigation.backtab: editDB
                }
            }

        }

        RowLayout
        {
            id: rowUser
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: 500
            Layout.preferredHeight: 40

            Text
            {
                font.bold: true;
                text: "User:"
                font.family: "Arial"
            }

            Rectangle
            {
                Layout.alignment: Qt.AlignRight
                id: recUser
                color: "grey"
                width: 400
                height: 40

                TextInput
                {
                    x:5
                    id: editUser
                    font.pointSize: 20;
                    width: recHost.width
                    KeyNavigation.tab: editPass
                    KeyNavigation.backtab: editHost
                }
            }

        }

        RowLayout
        {
            id: rowPass
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: 500
            Layout.preferredHeight: 40

            Text
            {
                font.bold: true;
                text: "Password:"
                font.family: "Arial"
            }

            Rectangle
            {
                Layout.alignment: Qt.AlignRight
                id: recPass
                color: "grey"
                width: 400
                height: 40

                TextInput
                {
                    x:5
                    id: editPass
                    font.pointSize: 20;
                    width: recHost.width
                    echoMode: TextInput.Password;
                    passwordCharacter: "*";
                    KeyNavigation.tab: editDB
                    KeyNavigation.backtab: editUser

                }
            }

        }
        RowLayout
        {
            id: rowDB
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: 500
            Layout.preferredHeight: 40

            Text
            {
                font.bold: true;
                text: "Database:"
                font.family: "Arial"
            }

            Rectangle
            {
                Layout.alignment: Qt.AlignRight
                id: recDB
                color: "grey"
                width: 400
                height: 40

                TextInput
                {
                    x:5
                    id: editDB
                    font.pointSize: 20;
                    width: recHost.width
                    KeyNavigation.tab: editHost
                    KeyNavigation.backtab: editPass
                }
            }

        }

        Button
        {
            Layout.alignment: Qt.AlignCenter
            height: 50;
            width: 400;
            text: "Connect";
            onClicked: providing.callMe(editHost.text, editUser.text, editPass.text, editDB.text)
        }

    }


}
