import QtQuick 2.0


Rectangle {
        id: root
        width: 100
        height: 200
            Image {
                id: pendulum
                x: 75; y: 0
                source: "pendulum.png"
                smooth: true
                rotation: 240-200
            }
        // By setting this SequentialAnimation on x, it and animations within it will automatically animate
        // the x property of this element
        SequentialAnimation on rotation {
            id: xAnim
            // Animations on properties start running by default
            running: true
            loops: Animation.Infinite // The animation is set to loop indefinitely
            NumberAnimation { from: 110; to:160; duration: 1500; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 160; to: 110; duration: 1500; easing.type: Easing.InOutQuad }
            //PauseAnimation { duration: 500 } // This puts a bit of time between the loop
        }

       
    }

