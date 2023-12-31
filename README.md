# DELTARUNITY

DELTARUNITY is an implementation of GameMaker script execution and graphical rendering inside Unity, with the example game of DELTARUNE Chapter 1.

Sprites and sounds are not included for this project, but a tool to import those exists. (See [here](#importing-game-assets).)

## Rendering Details
Rendering is accomplished via GL calls to a camera (the GL Capture Camera), where `Render()` is manually called to render the camera to a RenderTexture.

This RenderTexture is then displayed on a Quad with point filtering, and screen output is achieved from a camera pointed at this quad. This achieves pixel-perfect rendering, no matter the game window size or object position (which can be in the decimals).

Sprites are rendered with Graphics.DrawTexture, Rectangles are rendered with GL.QUADS, Text is rendered with a custom implementation using Graphics.DrawTexture or GL.QUADS depending if color gradients are used, Triangles are rendered with GL.TRIANGLES, and Lines are rendered with a custom rastering implementation based on [this C++ code](https://github.com/ArminJo/STMF3-Discovery-Demos/blob/master/lib/BlueDisplay/LocalGUI/ThickLine.hpp).

## Importing Game Assets
On the top bar, click "DELTARUNITY", then "Import Game Assets". Locate the `data.win` of **SURVEY_PROGRAM** (e.g. not the Steam version of Deltarune!)

After that has completed (which will take some time!), go back into DELTARUNITY on the top bar and press "Regenerate Sprite Assets". After that has completed, all the audio and sprites will have imported.

## Script Exeuction
Scripts are executed from their raw `.asm` files, produced by UTMT. A breakdown of the GameMaker assembly language can be found [here](ASSEMBLY.md).

## Sounds
Sounds should be placed in `Assets/SOUNDS/`. This includes all music files, including .ogg and .wav files. Select every sound and music file, right click, and select "Add to Audio Database".
