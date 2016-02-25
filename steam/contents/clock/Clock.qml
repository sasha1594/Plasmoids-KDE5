
import QtQuick 2.0
// An analog clock that shows hours, minutes and seconds.


Rectangle {
    id: root
    color: "transparent"
    width: 200 // acts as minimum width
    height: 200 // acts as minimum height
    property int hours:   0
    property int minutes: 0
    property int seconds: 0
    property date dateTime: new Date()
    
    Timer {
        interval: 1000; running: true; repeat: true;
        onTriggered: root.dateTime = new Date()
            }
    
    FontLoader {
        id: font
        source: "Salsa-Regular.ttf"
    }
    
            Image {
            x: 70 ; y:125
            id: backplate            
            source: "background.png"
           }        
           
            Image {
                id: face            
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "face.png"
           }
            
            Image {
                x: 70; y: 42
                id: thinhand
                source: "needle.png"
                smooth: true
                rotation: root.seconds * 6
            }
           
        
             Image {
                x: 0; y: 0
                id: shorthand
                source: "hour.png"
                smooth: true
                rotation: (root.hours * 30) + (root.minutes * 0.5)
            }            
            
            Image {
                x: 0; y: 0
                id: longhand
                source: "minute.png"
                smooth: true
                rotation: root.minutes * 6
            }
            
            Image {
            x: 0; y: 0
            id: button            
            source: "button.png"
           }
                
                 Image {
            x: 0; y: 0
            id: glass            
            source: "glass.png"
           }
                
           
            Text {
                x: 78; y: 132; z: 5
                width: 42; height: 17
                text: Qt.formatDateTime(root.dateTime, "ddd, dd")
                font.pointSize: 8
                font.bold: true
                font.family: font.name
                color: "#000000"

    }
   
}
