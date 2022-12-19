# Introduction
On This example, I am going to add custom difficulty `Crazy`. There are 2 methods to add your <ins>custom difficulty **Master Editor** or **Source Code**</ins>.

***

# Requirements
You will need the <ins>difficulty image for the Story mode menu</ins>, and you're also gonna have to do the `Crazy` difficulty chart to all songs. 

Put the `Crazy` difficulty image in `mods/menudifficulties` folder <ins>if you're using the **Master Editor** method</ins> or `assets/preload/images/menudifficulties` folder <ins>if you're using the **Source Code** method</ins>, and named it `crazy.png`.

Crazy Image Reference:

<img width="300" alt="crazy" src="https://user-images.githubusercontent.com/101881784/202882465-ad2c0d3b-899d-4357-ba50-ae5d77c5bbda.png">

***

# Master Editor
The **Master Editor** is a type of editor that make <ins>modding easier like creating characters, dialogues, and week</ins>. To enter the **Master Editor** <ins>go to the menu screen and press 7</ins>. Then press the **Week Editor** to create your custom difficulty. 

After you enter the **Week Editor** go to the <ins>"Other" tab and click it</ins>. Go to "Difficulties" and write your difficulty name like `Easy, Normal, Hard, Crazy`, write it in the "Difficulties". <ins>Save it by clicking the "Save Week"</ins>, the `json` file will popup put in `mods/weeks` folder and named however you liked.

Other Tab Reference:

<img width="300" alt="Other tab" src="https://user-images.githubusercontent.com/101881784/202889726-f704262a-9df0-458c-8b50-1e3ef2bcde07.png">

***

# Source Code
This methed is kinda complicated becuase you have to download the source code after that you have to compiled it, if you're finished. Anyways go to `CoolUtil.hx` on the `source` folder open it and <ins>go to line 20 you will see this array</ins>. Put the difficulty name in there shown below.

Code Example:
```haxe
public static var defaultDifficulties:Array<String> = [
     'Easy',
     'Normal',
     'Hard',
     'Crazy'
];
```

# Results
If you done it correctly it should look like this. If not, check the difficulty image if it's in the <ins>correct folder or check the code</ins> if you did the **Source Code** method.

<img width="600" alt="Week" src="https://user-images.githubusercontent.com/101881784/202890840-488f4e97-5421-4dc6-936a-49861aadd827.png">
<img width="600" alt="Freeplay" src="https://user-images.githubusercontent.com/101881784/202891371-d9fa43b9-32f3-4191-b62d-e09d94854d6e.png">