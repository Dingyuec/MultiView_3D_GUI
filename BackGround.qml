import QtQuick 2.1 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {
    id: root

    components: [ layer, mesh, transform, backgroundMaterial]

    property Layer layer: null

    BackGroundMaterial{
        id: backgroundMaterial
        backTexture: "qrc:/textures/sky.jpg"
    }

    PlaneMesh {
        id: mesh
        width: 2.0
        height: 2.0
        meshResolution: Qt.size( 2, 2 )
    }

    Transform {
        id: transform
        // Rotate the plane so that it faces us
        rotation: fromAxisAndAngle(Qt.vector3d(1, 0, 0), 90)
    }
}
