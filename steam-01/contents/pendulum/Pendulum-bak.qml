//Pendulum.qml
import QtQuick 2.0

Item {
    id: pendulum
    width: 200
    height: 0
    
Image {
                id: pendu
                
                source: "pendulum.png"
                //origin: x: 39; y: 110;
                smooth: true
                rotation: 140
            }
        // By setting this SequentialAnimation on x, it and animations within it will automatically animate
        // the x property of this element
        SequentialAnimation on rotation {
            id: xAnim
            // Animations on properties start running by default
            running: true
            loops: Animation.Infinite // The animation is set to loop indefinitely
            //PropertyAction { target: pendu; property: "smooth"; value: "true" }
            NumberAnimation { from: 0; to: 120; duration: 2000; easing.type: Easing.InOutQuad}
            //PauseAnimation { duration: 500 } // This puts a bit of time between the loop
            NumberAnimation { from: 120; to: 0; duration: 2000; easing.type: Easing.InOutQuad}
            
        }

       
    }

