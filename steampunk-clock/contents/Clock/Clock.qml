import QtQuick 2.0
// An analog clock that shows hours, minutes and seconds.


Rectangle {
    id: root
    color: "transparent"
    width: 300 // acts as minimum width
    height: 300 // acts as minimum height
    property int hours:   0
    property int minutes: 0
    property int seconds: 0
    
     FontLoader {
        id: font
        source: "BIRTH_OF_A_HERO.ttf"
    }
   
            Image {
            id: backplate
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "background.png"
           }        
           
            Image {
            id: face            
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "face.png"
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
                x: 115; y: 75
                id: thinhand
                source: "needle.png"
                smooth: true
                rotation: root.seconds * 6
            }
            
             Image {
            id: glass
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "glass.png"
           }        
            
            Text {
                x: 130; y: 202; z: 5
                width: 42; height: 17
                text: Qt.formatDate(new Date(), "ddd, dd")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 12
                font.family: font.name
                color: "#000000"

    }
       
           
}
