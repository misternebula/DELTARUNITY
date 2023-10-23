# DELTARUNITY

DELTARUNITY is an implementation of GameMaker script execution and graphical rendering inside Unity, with the example game of DELTARUNE Chapter 1.

Sprites and sounds are not included for this project, a tool to export these from your existing game is coming soon.

## Rendering Details
Rendering is accomplished via GL calls to a camera (the GL Capture Camera), where `Render()` is manually called to render the camera to a RenderTexture.

This RenderTexture is then displayed on a Quad with point filtering, and screen output is achieved from a camera pointed at this quad. This achieves pixel-perfect rendering, no matter the game window size or object position (which can be in the decimals).

Sprites are rendered with Graphics.DrawTexture, Rectangles are rendered with GL.QUADS, Text is rendered with a custom implementation using Graphics.DrawTexture or GL.QUADS depending if color gradients are used, Triangles are rendered with GL.TRIANGLES, and Lines are rendered with a custom rastering implementation based on [this C++ code](https://github.com/ArminJo/STMF3-Discovery-Demos/blob/master/lib/BlueDisplay/LocalGUI/ThickLine.hpp).

## Setting up a Room
- Create a new scene, with the name of the room. (for example, `room_test.unity`)
- Create a new GameObject, with the same name as the room.
- Attach `Room.cs` to this object, and enter the room size and camera size.
- Add the room to the room list in `File > Build Settings... > Add Open Scenes`

If this room is the first room to be loaded - the "entry" room - then the following prefabs from `Assets/Prefabs/` **MUST** be placed in this scene.
- GL Capture Camera
- MainCamera
- Manager
- Quad

## Creating an object
### The Script
Create your script in `Assets/Scripts/OBJECT SCRIPTS/`, named the same as your object. (for example, `obj_test.cs`)
If the object has no parent, then inhert from `GamemakerObject`. If it has a parent, inhert from that instead.
To write code for the Create, Destroy, Alarm, Step, etc. methods, create an override method with the right name. The methods you can override are :
  - Precreate();
  - Create();
  - Destroy();
  - Step_0(); _(Step)_
  - Step_1(); _(Begin Step)_
  - Step_2(); _(End Step)_
  - Draw_0(); _(Draw)_
  - Draw_64(); _(Draw GUI)_
  - Draw_65(); _(Resize)_
  - Draw_72(); _(Begin Draw)_
  - Draw_73(); _(End Draw)_
  - Draw_74(); _(Begin Draw GUI)_
  - Draw_75(); _(End Draw GUI)_
  - Draw_76(); _(Pre-Draw)_
  - Draw_77(); _(Post-Draw)_
  - Alarm_0(); through Alarm_11();
  - Other_4(); _(Room Start)_
  - Other_5(); _(Room End)_
  - Other_7(); _(Animation End)_
  - Other_10(); through Other_26();

You can use all the normal GameMaker built-in variables that you normally can. Variable declarations should be in `GMOVariables.cs`, to allow other scripts to access them. Since GameMaker is weakly-typed, variables should be of type `dynamic` if they need to be used in a weakly-typed context.
Global variables should be declared in `global.cs` as `public static`. Custom scripts should be in `GMOCustomScripts.cs`.

### Creating a Layer in a Room
Instances need to be placed in a layer.
- Create a new GameObject with no parent
- Add `GMLayer.cs` to this object, and configure the LayerID and depth appropriately.

### Creating an Instance in a Room
- Create a GameObject parented to the layer.
- Assign the object script to this object.
- Give the object a unique instance ID.

### Registering the Instance
In order for scripts to be able to create an instance of your object with `instance_create`, you need to :
- Create a prefab of your object and place it in `Assets/OBJECTS`
- Add the prefab to `Assets/ScriptableObjects/InstanceDatabase.asset`

## Sprites
- Place the .png(s) somewhere in `Assets/Sprites/`.
- Select every .png that should be a sub-image. The images should end with a zero-based index of which sub-image it is. For example, `spr_torcar_d_0`, `spr_torcar_d_1`, etc.
- Right click on the selected items and click "Create Sprite Asset"
- A new asset will be created with the name of the sprite (i.e. `spr_torcar_d.asset`)
- Adjust the settings of the sprite asset, setting the margins, origin, etc.

### Collision Masks
Collision masks can either be manually assigned in the sprite asset, or placed bulk in `Assets/Sprites/Masks/`, named as the sprite name. (i.e. `spr_torcar_d_0`) When running in editor, sprites that do not have a collision mask will assign themselves the mask it finds in this folder.

## Sounds
Sounds should be placed in `Assets/SOUNDS/`. This includes all music files, including .ogg and .wav files. Select every sound and music file, right click, and select "Add to Audio Database".
