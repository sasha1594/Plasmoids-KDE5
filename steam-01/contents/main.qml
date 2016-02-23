import QtQuick 2.0
import QtQuick.Layouts 1.0
import "background"
import "pendulum"
import "frontpanel"
import "clock"


// Shows current time in analog clock.
Rectangle {
    id: root
    color: "transparent"
    width:  200
    height: 350
    property variant now: new Date()
    property string fontPath: "clock/Varicka.ttf"
    
    Timer {
        id: clockUpdater
        interval: 1000 // update clock every second
        running: true
        repeat: true
        onTriggered: {
            root.now = new Date()
        }
}
Background {
    id: backpanel
    x: 0; y: 60; z: 1
}

Pendulum {
        id: pendulum
        x: 74; y:-20; z: 2
}
Frontpanel {
    id: frontpanel
    x: 0; y: 60; z: 2
}

Clock {
        z: 6
        id: clock
        hours: root.now.getHours()
        minutes: root.now.getMinutes()
        seconds: root.now.getSeconds()
        }



}

