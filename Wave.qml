import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0
import Qt3D.Input 2.0
import QtQuick 2.0 as Quick
import Qt3D.Examples 2.0

Entity {
    id: root

    property real x: 0.0
    property real y: 0.0
    property real z: 0.0
    property real scale: 1.0
    property real theta: 0.0
    property real phi: 0.0
    property Layer layer: null

    property color tint: Qt.rgba( 0.0, 0.0, 0.0, 1.0 )
    property real intensity: 0.3


    components: [ transform, mesh, material, layer ]

    Transform {
        id: transform
        translation: Qt.vector3d(root.x, root.y, root.z);
        rotation: fromEulerAngles(root.theta, root.phi)
        scale: root.scale
    }

    WaveMaterial {
        id: material
        ambient: Qt.rgba( root.tint.r, root.tint.g, root.tint.b, 1.0 ) // Set color tint
        diffuse: Qt.rgba( root.intensity, root.intensity, root.intensity, 1.0 ) // Set how bright the wave is
        objTexture: "qrc:/textures/WaterNormal.jpg"
    }

    Mesh {
        id: mesh
        source:"qrc:/models/nanosuit.obj"
    }
}
