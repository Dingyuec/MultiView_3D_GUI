TEMPLATE = app

!include( ../examples.pri ) {
    error( "Couldn't find the examples.pri file!" )
}

QT += qml quick 3dcore 3drender 3dinput 3dquick 3dextras 3dquickextras widgets
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    models.qrc \
    textures.qrc \
    shaders.qrc

DISTFILES += main.qml \
    BackGround.qml \
    ModelForwardRenderer.qml \
    BasicCamera.qml \
    Scene.qml \
    Wave.qml \
    WaveMaterial.qml \
    WaveEffect.qml \
    BackGroundEffect.qml \
    BackGroundMaterial.qml

HEADERS += \
    wave.h


