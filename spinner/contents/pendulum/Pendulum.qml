//Pendulum

import QtQuick 2.0


Rectangle {
        id: pendu
        width:150
        height: 150
        color: "transparent"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        
        Image {
                anchors.horizontalCenter: pendu.horizontalCenter
                anchors.verticalCenter: pendu.verticalCenter
                id: background
                source: "backplate.png"
               
            }

            Image {
                id: pendulum
                x: 15; y: 68
                source: "pendulum.png"
                smooth: true
                rotation: 200-140
            }
        // By setting this SequentialAnimation on x, it and animations within it will automatically animate
        // the x property of this element
        SequentialAnimation on rotation{
            id: xAnim
            // Animations on properties start running by default
            running: true
            loops: Animation.Infinite // The animation is set to loop indefinitely
            NumberAnimation { target: pendulum; property: "rotation";from: 100; to:200; duration: 400; easing.type: Easing.InOutQuad }
            NumberAnimation { target: pendulum; property: "rotation";from: 200; to: 100; duration: 400; easing.type: Easing.InOutQuad }
            //PauseAnimation { duration: 500 } // This puts a bit of time between the loop
        }

       
    }

