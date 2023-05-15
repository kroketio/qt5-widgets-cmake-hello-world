import QtQuick 2.0
import QtCharts 2.0
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2


ApplicationWindow {
    id: root
    title: "Hello"

    width: 1920
    height: 1080

    property string backgroundColor: "#202124"
    property string borderColor: "#fdd663"
    property string areaColor: "#4d431d"

    visible: true
    color: backgroundColor

    ChartView {
        id: lol
        title: "Температура"
        antialiasing: false
        legend.visible: false
        height: parent.height - 80
        anchors.right: parent.right
        anchors.left: parent.left

        ValueAxis {
            id: valueAxis
            min: 2000
            max: 2011
            tickCount: 12
            labelFormat: "%.0f"
        }

        AreaSeries {
            name: "Russian"
            borderColor: root.borderColor
            color: root.areaColor
            borderWidth: 4
            axisX: valueAxis
            upperSeries: LineSeries {
                XYPoint { x: 2000; y: 1 }
                XYPoint { x: 2001; y: 1 }
                XYPoint { x: 2002; y: 1 }
                XYPoint { x: 2003; y: 1 }
                XYPoint { x: 2004; y: 1 }
                XYPoint { x: 2005; y: 0 }
                XYPoint { x: 2006; y: 1 }
                XYPoint { x: 2007; y: 1 }
                XYPoint { x: 2008; y: 4 }
                XYPoint { x: 2009; y: 3 }
                XYPoint { x: 2010; y: 2 }
                XYPoint { x: 2011; y: 1 }
            }
        }
    }

    Component.onCompleted: {
        console.log("ApplicationWindow loaded!");
        console.log("QT runtime: " + qtRuntimeVersion);
    }
}
