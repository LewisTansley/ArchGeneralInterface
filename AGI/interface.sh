#!/bin/bash

StartupAnimation(){

    clear
    sleep 0.1
    figlet "A"
    sleep 0.04
    clear
    figlet "AR"
    sleep 0.04
    clear
    figlet "ARC"
    sleep 0.04
    clear
    figlet "ARCH"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "C"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "CO"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COM"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMM"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMMA"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMMAN"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMMAND"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMMANDE"
    sleep 0.04
    clear
    figlet "ARCH"
    figlet "COMMANDER"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Interface"
    sleep 0.1
    echo ;
}

MainMenu(){
    clear
    figlet Personal 
    figlet Interface
    echo ;

    PS3='choose an option >> '
    options=("Working" 
             "Gaming"
             "Config"
             "Maintenance"
             "Brightness" 
             "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Working")
                Working
                break
            ;;
            "Gaming")
                Gaming
                break
            ;;
            "Config")
                Config
                break
            ;;
            "Maintenance")
                Maintenance
                break
            ;;
            "Brightness")
                Brightness
                break
            ;;
            "Quit")
                clear
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
}

Working(){
    clear
    figlet Select 
    figlet Workspace
    echo ;

    PS3='Choose a workspace >> '
    options=("WebDev" 
            "GameDev"
            "Cancel"
            )
    select opt in "${options[@]}"
    do
        case $opt in
            "WebDev")
                WebDev
                break
            ;;
            "GameDev")
                GameDev
                break
            ;;
            "Cancel")
                clear
                MainMenu
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
    break
}
Gaming(){
    clear
    figlet Select 
    figlet Environment
    echo ;

    PS3='choose an environment >> '
    options=("Solo" 
             "Social"
             "Cancel"
             )
    select opt in "${options[@]}"
    do
        case $opt in
            "Solo")
                Solo
                break
            ;;
            "Social")
                Social
                break
            ;;
            "Cancel")
                clear
                MainMenu
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
    break
}

Config(){
    clear
    figlet Select 
    figlet Config
    echo ;    

    PS3='choose config file for editing >> '
    options=("i3" 
             "picom"
             "alacritty"
             "polybar"
             "Cancel"
             )
    select opt in "${options[@]}"
    do
        case $opt in
            "i3")
                break
            ;;
            "picom")
                break
            ;;
            "alacritty")
                break
            ;;
            "polybar")
                break
            ;;
            "Cancel")
                clear
                MainMenu
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done

    clear
    MainMenu
    break
}

Brightness(){
    clear
    figlet Select 
    figlet Value
    echo ;
    
    PS3='choose a brightness >> '
    options=("Max" 
             "Half"
             "Min"
             "Cancel"
             )
    select opt in "${options[@]}"
    do
        case $opt in
            "Max")
                sudo brightnessctl s 255
                break
            ;;
            "Half")
                sudo brightnessctl s 128
                break
            ;;
            "Min")
                sudo brightnessctl s 0
                break
            ;;
            "Cancel")
                clear
                MainMenu
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
    clear
    MainMenu
    break
}

Maintenance(){
    clear
    figlet Select 
    figlet Type
    echo ;

    PS3='choose a Maintenance Type >> '
    options=("Safe"
             "Dangerous"
             "Cancel"
             )
    select opt in "${options[@]}"
    do
        case $opt in
            "Safe")
                Safe
                break
            ;;
            "Dangerous")
                Dangerous
                break
            ;;
            "Cancel")
                clear
                MainMenu
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
    break
}

Safe(){
    clear
    figlet Starting Maintenance
    echo ;
    sleep 1
    clear
    figlet Update
    echo ;
    sleep 1
    yay -Syu
    clear
    figlet Cleaning Cache
    echo ;
    sleep 1
    yay -Sc
    clear
    figlet Clearing Orphans
    echo ;
    sleep 1
    sudo pacman -Qtdq | sudo pacman -Rns

    sleep 1
    clear
    MainMenu
    break
}
Dangerous(){
    clear
    break
}

WebDev(){
    clear
    sleep 0.2
    figlet Starting 
    sleep 0.2
    figlet WebDev
    sleep 0.2
    echo ;
    
    nohup code & disown
    nohup google-chrome-stable & disown
    nohup github-desktop & disown
    clear
    break
}
GameDev(){
    clear
    figlet Workspace 
    figlet Selection
    echo ;

    PS3='Choose a workspace >> '
    options=("Design" 
            "Programming"
            "Cancel"
            )
    select opt in "${options[@]}"
    do
        case $opt in
            "Design")
                Design
                break
            ;;
            "Programming")
                Programming
                break
            ;;
            "Cancel")
                clear
                Working
                break
            ;;
            *) echo "invalid option $REPLY";;
        esac
    done
}

Design(){
    clear
    break
}
Programming(){
    clear
    break
}

Solo(){
    clear
    figlet Starting Solo Play
    echo ;
    sleep 1
    nohup steam & disown
    clear
    break
}
Social(){
    clear
    figlet Starting Social Play
    echo ;
    sleep 1
    nohup discord & disown
    nohup steam & disown
    clear
    break
}

StartupAnimation
MainMenu
exit