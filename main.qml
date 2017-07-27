import QtQuick 2.0
import QtQuick.Scene3D 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0


Item {
    property alias button: button

    Dialog {
        id: modelDialog
        GroupBox {
            id: groupBox_model
            width: 600
            height: 60
            title: qsTr("MODEL NAME")

            TextInput {
                id: textInput_model
                x: 5
                width: 574
                height: 20
                anchors.top: parent.top
                anchors.topMargin: 8
                font.pixelSize: 12
                text: "qrc:/models/"
            }
        }
    }
    Dialog {
        id: backgroundDialog
        GroupBox {
            id: groupBox_background
            width: 600
            height: 60
            title: qsTr("BACKGROUND NAME")

            TextInput {
                id: textInput_background
                x: 5
                width: 574
                height: 20
                anchors.top: parent.top
                anchors.topMargin: 8
                font.pixelSize: 12
                text: "qrc:/backgrounds/"
            }
        }
    }

    Rectangle {
        id: scene
        property bool colorChange: true
        anchors.fill: parent
        color: "#2d2d2d"

        transform: Rotation {
            id: sceneRotation
            axis.x: 1
            axis.y: 0
            axis.z: 0
            origin.x: scene.width / 2
            origin.y: scene.height / 2
        }
        Rectangle {
            id: controlsbg
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.topMargin: 10
            anchors.rightMargin: 1720
            anchors.bottomMargin: 10
            color: "grey"

            Column {
                anchors.fill: parent
                anchors.leftMargin: 5
                anchors.topMargin: 5
                spacing: 10

                Rectangle {
                    id: loadModel
                    width: 180
                    height: 60
                    color: "#2d2d2d"

                    Button {
                        id: button
                        x: 25
                        y: 12
                        width: 120
                        height: 40
                        text: qsTr("LOAD MODEL")
                        anchors.verticalCenter: parent.verticalCenter
                        onClicked: modelDialog.open()
                    }
                }

                Rectangle {
                    id: slidertexturespeed
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: texturespeedtext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "TEXTURE SPEED"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider5
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 1.1
                        maximumValue: 4.0
                        minimumValue: 0.0
                    }
                }
                Rectangle {
                    id: sliderspecularity
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: specularitytext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "SPECULARITY"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider3
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 1.0
                        maximumValue: 3.0
                        minimumValue: 0.0
                    }
                }

                Rectangle {
                    id: sliderdistortion
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: distortiontext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "DISTORTION"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider7
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 0.015
                        maximumValue: 0.1
                        minimumValue: 0.0
                    }
                }
                Rectangle {
                    id: slidernormal
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: normaltext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "NORMAL AMOUNT"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider8
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 2.2
                        maximumValue: 4.0
                        minimumValue: 0.0
                    }
                }
                Rectangle {
                    id: sliderwavespeed
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: wawespeedtext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "WAVE SPEED"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider2
                        updateValueWhileDragging: false
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 0.75
                        maximumValue: 4.0
                        minimumValue: 0.1
                    }
                }
                Rectangle {
                    id: sliderwaveheight
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: waweheighttext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "WAVE HEIGHT"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider6
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 0.2
                        maximumValue: 0.5
                        minimumValue: 0.02
                    }
                }
                Rectangle {
                    id: slidermeshrotation
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: meshrotationtext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "MESH ROTATION"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider4
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 35.0
                        maximumValue: 360.0
                        minimumValue: 0.0
                    }
                }

            }
        }

        Scene3D {
            id: scene3d
            anchors.fill: parent
            anchors.leftMargin: 200
            anchors.topMargin: 10
            anchors.rightMargin: 10
            anchors.bottomMargin: 10
            focus: true
            aspects: ["input", "logic"]
            cameraAspectRatioMode: Scene3D.AutomaticAspectRatio
            Scene{ }
        }
    }
}
