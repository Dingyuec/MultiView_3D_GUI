import QtQuick 2.1 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity {
    id: root

    RenderSettings {
        id: renderSettings
        activeFrameGraph: ModelForwardRenderer {
            camera: mainCamera
        }
    }

    components: [ renderSettings, inputSettings ]

    // Event Source will be set by the Qt3DQuickWindow
    InputSettings { id: inputSettings }

    BasicCamera {
        id: mainCamera
        position: Qt.vector3d( 0.0, 10.0, 25.0 )
    }

    FirstPersonCameraController { camera: mainCamera }

    BackGround {
        id: background
        layer: renderSettings.activeFrameGraph.backgroundLayer
    }

    Wave {
        id: wave
        layer: renderSettings.activeFrameGraph.waveLayer
    }
}
