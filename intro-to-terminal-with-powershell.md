# Intro to the terminal with Powershell

## Before you start

I am not a heavy terminal user. There are a lot of things I don't know about terminals. This is just my own version of a crash course on powershell. I may or may not update this as I get to know more about the topic.

Most people prefer working with unix based terminals. If you are someone with the same preference, you can check out this video from Brad Traversy : [Command Line Crash Course For Beginners | Terminal Commands](https://youtu.be/uwAqEzhyjtw). Even if you like to work with powershell, you should watch it. Because, it covers a lot of cool stuff. You may need to google for alternative powershell commands for a couple or two. But most of them are pretty similar.

## Table of Contents :

- [Why the Terminal?](#why-the-terminal)
- [Installing Powershell](#installing-powershell)
- [Moving around the file system](#moving-around-the-file-system)
- [Basic understanding of commands](#basic-understanding-of-commands)
- [Creating files and folders]()
- [Deleting files and folders]()
- [Copy, Move and Rename]()
- [Read and Write into files]()
- [Speed up your workflow using Shell Profile]()

## Why the Terminal?

So that people stare at you in the cafe thinking you are a magician or something.

## Installing powershell

[Click here](https://github.com/PowerShell/PowerShell/releases/) and the download the latest version of powershell accoriding to your operating system and install it. If you are already on windows and you have powershell installed, you still download the latest version. Otherwise microsoft may steal your laptop.

Now go ahead and open it. Then run the command `whoami`. **Congrats!** You have written your first terminal command.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/powershell-intro.png)
_Yours may look a little different. But the functionality is similar._

## Moving around the file system

### pwd

In the terminal, you are always inside a folder. To know where exactly are you, you can use the command `whereami`. Just kidding, it's `pwd`.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/pwd.png)

**NB**: Here `pwd` stands for `Present Working Directory`. Same command works on unix based systems.

### ls

You can use `ls` to list all the files and folders in that particular location.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/ls.png)

**NB**: Here `ls` stands for `list`. Same command works on unix based systems.

### cd

Now to enter a directory (folder), use `cd` follwed by the name of that folder. You can just type first few characters and hit `tab` and it'll autocomplete the name of the directory for you.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/cd.png)

To move 1 level backwards, use `cd ..`

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/cd-back.png)

And to move more than 1 level, use `cd ../..` , `cd ../../..` and so on.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/cd-back-mult.png)

Finally, I have one more for you. `cd ~` takes you to the `user` folder on windows and `home` folder on unix based systems.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/cd-home.png)

**NB**:

- Here `cd` stands for `Change Directory`.
- On windows, folder names are case insensitive. So you can always type it in lowercase to make things easy. Hitting `tab` to autocomplete the commands will fix the cases anyways.
- The `.` represents current directory. You can ignore the `.` and it'll still work.
- Windows uses `\` to separate directories, whereas on unix based systems, you'll see `/`. But powershell is forgivin. Even if you type `cd ./your-directory`, it'll still work.

# Basic understanding of commands

Take a look at the comman below

```powershell
ls .\workspace\env-setup\ -fo
```

I'll break it into 3 parts

- `ls` is the name of the command.
- `.\workspace\env-setup\` is an argument. Arguments are generally used to pass inputs.
- `-fo` is a flag. Flags are used to pass options.

If you don't pass any argument to the `ls` command, it lists the containings in the current directory. Passing the location of a certain directory lists the containings of that certain directory.

The `fo` flag is an alias for `-Force`. Which allows it to show hidden directories.

![You have bad internet or I screwed up](https://raw.githubusercontent.com/Tasnimul-Hasan/env-setup/main/screenshots/flags-and-arguments.png)

_As you can see, the `-fo` flag revealed the `.git` directory which was hidden._

**bakita pore likhtechi. kal exam, ghumaite hobe**
