#!/bin/bash

StartupAnimation(){

    clear
    sleep 0.1
    figlet "P"
    sleep 0.04
    clear
    figlet "Pe"
    sleep 0.04
    clear
    figlet "Per"
    sleep 0.04
    clear
    figlet "Pers"
    sleep 0.04
    clear
    figlet "Perso"
    sleep 0.04
    clear 
    figlet "Person"
    sleep 0.04
    clear
    figlet "Persona"
    sleep 0.04
    clear
    figlet "Personal"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "I"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "In"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Int"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Inte"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Inter"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Interf"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Interfa"
    sleep 0.04
    clear
    figlet "Personal"
    figlet "Interfac"
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
             "Maintenance" 
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
            "Maintenance")
                Maintenance
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
}
Maintenance(){
    clear
    figlet Setting Brightness
    echo ;
    sleep 1
    sudo brightnessctl s 255
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