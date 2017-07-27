import Qt3D.Core 2.0
import Qt3D.Render 2.0

Material {
    id: root

    property alias objTexture: objTextureImage.source
    property color ambient: Qt.rgba( 0.05, 0.05, 0.05, 1.0 )
    property color diffuse: Qt.rgba( 0.7, 0.7, 0.7, 1.0 )
    property real lineWidth: 1.0
    property color lineColor: Qt.rgba( 1.0, 1.0, 1.0, 1.0 )

    effect: WaveEffect { id: effect }

    parameters: [
        Parameter {
            name: "objTexture"
            value: Texture2D{
                id: objTexture
                minificationFilter: Texture.LinearMipMapLinear
                magnificationFilter: Texture.Linear
                wrapMode {
                    x: WrapMode.Repeat
                    y: WrapMode.Repeat
                }
                generateMipMaps: true
                maximumAnisotropy: 16.0
                TextureImage { id: objTextureImage }
            }
        },
        Parameter { name: "ka"; value: Qt.vector3d(root.ambient.r, root.ambient.g, root.ambient.b) },
        Parameter { name: "kd"; value: Qt.vector3d(root.diffuse.r, root.diffuse.g, root.diffuse.b) },
        Parameter { name: "line.width"; value: root.lineWidth },
        Parameter { name: "line.color"; value: root.lineColor }
    ]
}
