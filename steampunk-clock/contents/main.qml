import QtQuick 2.0
import "Clock"

// Shows current time in analog clock.
Rectangle {
    id: root
    color: "transparent"
    width:  300
    height: 300
    property variant now: new Date()
    property string fontPath: "Clock/Engravers_MT.ttf"
    Timer {
        id: clockUpdater
        interval: 1000 // update clock every second
        running: true
        repeat: true
        onTriggered: {
            root.now = new Date()
        }
    }

Clock {
        id: clock
        anchors.centerIn: parent
        hours: root.now.getHours()
        minutes: root.now.getMinutes()
        seconds: root.now.getSeconds()
    }

}
