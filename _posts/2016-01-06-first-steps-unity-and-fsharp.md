---
layout: post
title:  "Setting up a F# project for Unity3d"
date:   2016-1-6 22:22:00
categories: unity functional 
comments: true
---

After some "depression" with development in general, I finally got my hands back to work and started to tinker with my lovely **F#** again.  
  
**BUT YOU SAID THAT YOU WOULD STAY WITH /insert other language here/ ROAR, BLARGHHGRHAGAHR**  
  
Whatever, I just realized that **Unity3d** is a really cool simulation/presentation tool so I can do **Machine Learning** stuff in there.  
  
**AND NO, I WON'T USE C# BECAUSE I'M A WEIRDO THAT USES FUNCTIONAL LANGUAGES WHENEVER HE IS ALLOWED TO.**  
  
*...ahem...*  Let's begin...
  
## Setting up a F# project for using it within Unity
  
Well, the approach here is different than in the "normal" Unity workflow, instead of making a script in Unity and editing in your IDE such as VS or MonoDev, we create the script in the IDE, and then we import it.  
  
It's the same process, but just "backwards", doesn't seem convenient nor inconvenient to me, but each opinion is different.  
  
Basically, what we do here, is to compile our project as a library, and assign each class, or **type** in our case as a component to our Unity **GameObjects**.  
  
### Step One: Create a Unity project
We begin by creating a Unity project as we do always, no changes, no anything.

### Step Two: Create a F# Library project
It is very important that in the project creation wizard we select to create a library project as this is the way that we have to "link" our F# project with Unity.  
  
For the project/solution path we should select the Unity's project path, and we untick the **Create directory for solution** checkbox. In my case, I named my F# project `GameLogic`, and my paths are  
`Projects/RollABall`  
`Projects/RollABall/GameLogic`

### Step Three: Setting up the project paths and references
When we finish creating our project first thing that we should do is to add a reference to the Unity DLLs, we do this (in VS2015) by right clicking on our project -> Properties -> Reference Paths.  
  
There we add a path that should be like `/path/to/Unity/Editor/Data/Managed`.  
There is where all the Unity DLLs are located.  
  
**All but one: `UnityEngine.UI.dll`**  
  
This one is located at `/path/to/Unity/Editor/Data/UnityExtensions/Unity/GUISystem/`.  
I copied all the files related to `UnityEngine.UI` to the `Editor/Data/Managed` directory.  
  
After this, we have to setup our **compilation output path**:  
We go to the **Build** tab in our project properties, and we set our output path to  
`/path/to/project/Assets/bin`.  
This way, we get our "compiled library" into our Assets folder, ready to be used in Unity.  
  
After this, don't forget to add the references in your project to:  
`UnityEngine.dll`  
`UnityEngine.UI.dll`  
`FSharp.Core.dll`  

The `CopyLocal` property of these references should be set to `false` except for the `FSharp.Core`, which should be true so Unity can find the references to the F# functions.  

### Step Four: Begin to work!
Now we just have to write some code in a `.fs` file like this:  
  
```fsharp
open UnityEngine

type TestComponent ()=
    inherit MonoBehaviour ()
  
    [<SerializeField>]
    let mutable message: string = "Insert message here"

    member this.Start () =
        Debug.Log message
```
  
**What's this `SerializeField` thing?**  
Well, as we are using a compiled version of our *library*, we cannot expose the field through a **public** field, but we do it this way.  
  
So now basically, build your solution, go to your Unity project, and in the `Assets/bin` folder, you will find a unique file **with an arrow** called like your project, in my case `GameLogic`. If you click on the arrow, you will find all the types that you defined, as long as they inherit from `MonoBehaviour` or alike. The problem may be that all of them, even if organized in folders, for which I recommend **F# Power Tools** for VS2015, the type list is **flattened**. But hell, that's why the **search bar** on the project view is, **use it!!**.  
  
Now we can take our `TestComponent` and add it to some game object in our scene, and after running the game we should get the message in our Unity console.  
  
Have fun!