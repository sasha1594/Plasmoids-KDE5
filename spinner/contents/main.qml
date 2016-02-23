import QtQuick 2.0
import "Clock"
import "pendulum"

// Shows current time in analog clock.
Rectangle {
    id: root
    color: "transparent"
    width:  200
    height: 200
    property variant now: new Date()
    Timer {
        id: clockUpdater
        interval: 1000 // update clock every second
        running: true
        repeat: true
        onTriggered: {
            root.now = new Date()
        }
    }
    Pendulum
    {id: pendulum
        x: 55; y: 80
    }

Clock {
        id: clock
        anchors.centerIn: parent
        hours: root.now.getHours()
        minutes: root.now.getMinutes()
        seconds: root.now.getSeconds()
    }

}
