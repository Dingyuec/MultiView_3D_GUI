import Qt3D.Core 2.0
import Qt3D.Render 2.0
Material {
    id: root

    property alias backTexture: backgroundTextureImage.source

    effect: BackGroundEffect{}

    parameters: [
        Parameter {
            name: "backgroundTexture"
            value: Texture2D{
                id: backgroundTexture
                minificationFilter: Texture.LinearMipMapLinear
                magnificationFilter: Texture.Linear
                wrapMode {
                    x: WrapMode.Repeat
                    y: WrapMode.Repeat
                }
                generateMipMaps: true
                maximumAnisotropy: 16.0
                TextureImage { id: backgroundTextureImage }
            }
        }
    ]
}
