import QtQuick 2.0
//import "spinner.js" as Logic
// An analog clock that shows hours, minutes and seconds.
Rectangle {
    id: root
    color: "transparent"
    width: 200 // acts as minimum width
    height: 200 // acts as minimum height
    // public:
    property int hours:   0
    property int minutes: 0
    property int seconds: 0
    // private:
    Item {
        id: clock
        
          }    
           
           
            Image {
                x: 83; y: 48
                id: minute
                source: "minute-wheel.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.minutes * 18
            }
            
             Image {
                x: 35; y: 51
                id: hour
                source: "hour-wheel.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.hours * 60
            }            
            
           /* Image {
                x: 121; y: 133
                id: second
                source: "second-wheel.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.seconds * 6
            }*/
            
           
            Image {
                x: 91; y: 93
                id: spinner
                source: "second-wheel.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.seconds * 35
                //Behavior on rotation {SpringAnimation{ spring: 2; damping: 0.2; modulus: 360 }}
            }
            
            Image {
            //x: 7.5; y: 7.5
            id: face            
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.verticalCenter: parent.verticalCenter
            //width: 200; height: 200
            //origin.x: 200; origin.y: 200
            source: "ClockFace.png"
           }
                       
           /*
           
           
           Image {
            //x: 7.5; y: 7.5
            id: glass            
           anchors.horizontalCenter: face.horizontalCenter
           anchors.verticalCenter: face.verticalCenter
            //width: 200; height: 200
            //origin.x: 200; origin.y: 200
            source: "glass.png"
           }   */        
                   
             Image {
                x: 0; y: 0
                id: shorthand
                source: "hour.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: (root.hours * 30) + (root.minutes * 0.5)
            }            
            
            Image {
                x: 0; y: 0
                id: longhand
                source: "minute.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.minutes * 6
            }
            
            Image {
                x: 0; y: 0
                id: thinhand
                source: "second.png"
                //origin.x: 6; origin.y: 80
                smooth: true
                rotation: root.seconds * 6
            }
           
           Image {
            //x: 7.5; y: 7.5
            id: button            
           anchors.horizontalCenter: face.horizontalCenter
           anchors.verticalCenter: face.verticalCenter
            //width: 200; height: 200
            //origin.x: 200; origin.y: 200
            source: "button.png"
           }
   Image {
            //x: 7.5; y: 7.5
            id: glass            
           anchors.horizontalCenter: face.horizontalCenter
           anchors.verticalCenter: face.verticalCenter
            //width: 200; height: 200
            //origin.x: 200; origin.y: 200
            source: "glass.png"
           }
           
}