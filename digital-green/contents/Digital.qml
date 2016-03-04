//Digital01.qml


import QtQuick 2.0


Rectangle {
    id: clock
    color: "transparent"
    width: 200
    height: 100
    property date dateTime: new Date()
    
    Timer {
        interval: 100; running: true; repeat: true;
        onTriggered: clock.dateTime = new Date()
            }
        FontLoader {
        id: font
        source: "digital-7__mono_.ttf"
    } 
    Image {
            id: face
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "face.png"
   }
    
    
Text {          id: hour
                x: 18; y: 30
                //verticalAlignment: Text.AlignVCenter
                //horizontalAlignment: Text.AlignHCenter
                text: Qt.formatDateTime(clock.dateTime, "hh mm                             ap") 
                
                font.family: font.name
                font.pointSize: 42
                //font.bold: true
                color: "#00ff00"
                layer.enabled: true
             }
                Text {
                id: colon
                x: 50; y: 30
                //width: 30
                text: blink? " : " : "   "
                color: "#00ff00"
                font.pointSize: 42
                //font.bold: true
                font.family: font.name

                property bool blink: false;
                Timer {
                    interval: 500; running: true; repeat: true; triggeredOnStart: true
                    onTriggered: colon.blink = !colon.blink
                }

    }
    Text {
                
                //width: 42; height: 17
                text: Qt.formatDateTime(clock.dateTime, "dd")
                x: 144; y: 30; z: 5
                font.pointSize: 20
                font.family: font.name
                color: "#00ff00"

    }
    
    Text {
                
                //width: 42; height: 17
                text: Qt.formatDateTime(clock.dateTime, "ddd")
                x: 144; y: 50; z: 5
                font.pointSize: 20
                font.family: font.name
                color: "#00ff00"

    }
    /*
    Text {      id: seconds   
                text: Qt.formatDateTime(clock.dateTime, "ss")
                x: 145; y: 30; z: 5
                font.pointSize: 20
                font.family: font.name
                font.bold: true
                color: "red"
                

    }*/


     
}