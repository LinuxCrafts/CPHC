#!/bin/bash

                                    ###########################
                                    #                         #
                                    #     ProtocolCreator     #
                                    #       By TStudios       #
                                    #   Version: 1.1.0        #
                                    #                         #
                                    ###########################

kdialog --msgbox "THIS PROGRAM IS A DANGEROUS PROGRAM AND THE PROGRAMER WILL NOT BE RESPONSIBLE FOR ANY DAMAGE DONE!\n\nCopyleft (c) 2018 SPS All Rights Reserved."
cd ~/.local/share/applications
Protocol=`kdialog --inputbox "Type your protocol name(example: http, https, file)[WARNING! DO NOT INCLUDE :// INSIDE OF THE PROTOCOL NAME ELSE THE PROGRAM MIGHT BREAK]:"`
ProgramName=`kdialog --inputbox "Type your Program's name:"`
Description=`kdialog --inputbox "Type your Program's Description:"`
Programcode=`kdialog --textinputbox "Type your program's code:" "#!/bin/bash\n#Replace this with your program's code"`
Categories=`kdialog --inputbox "Type your categories, syntax: Categorie;Subcategorie;Subsubcategorie; ,Must include semicolone at end, Can be 0 or more SUBcategories, There must be a MAIN categorie"`
Terminal=`kdialog --radiolist "Choose if you want your program to be executed in a terminal when executed via Protocol:" true "yes" true  false "no" false `
First=`kdialog --radiolist "Have you used a program that has created a custom protocol on this instalation of linux yet?" true "yes" true  false "no" false ``
if [[ "$First" = "true" ]]; then
  echo "[Added Associations]" >> mimeapps.list
fi
echo "
x-scheme-handler/$Protocol=$Protocol.desktop" >> mimeapps.list
echo "[Desktop Entry]
Version=1.0
Type=Application
Exec=sh -c \"~/$ProgramName/Start.sh %u\"
Icon=/usr/share/icons/hicolor/256x256/apps/org.gnome.Nautilus.png
StartupNotify=true
Terminal=$Terminal
Categories=$Categories
MimeType=x-scheme-handler/$Protocol
Name=$ProgramName
Comment=$Description
GenericName=This program was created using ProtocolCreator by TStudios
" > $Protocol.desktop
cd ~
mkdir $ProgramName
cd $ProgramName
echo "
#!/bin/bash
$Programcode
echo \"Starting $ProgramName\"
" > Start.sh
chmod 770 Start.sh
chmod 770 Install.sh
echo "cd ~/.local/share/applications
echo \"
x-scheme-handler/$Protocol=$Protocol.desktop\" >> mimeapps.list
echo -e \"[Desktop Entry]
Version=1.0
Type=Application
Exec=sh -c \\\"~/$ProgramName/Start.sh %u\\\"
Icon=/usr/share/icons/hicolor/256x256/apps/org.gnome.Nautilus.png
StartupNotify=true
Terminal=$Terminal
Categories=$Categories
MimeType=x-scheme-handler/$Protocol
Name=$ProgramName
Comment=$Description
GenericName=This program was created using ProtocolCreator by TStudios
\" > $Protocol.desktop
cd ~
mkdir $ProgramName
cd $ProgramName
echo -e \"
#!/bin/bash
$Programcode
\" > Start.sh
chmod 770 Start.sh
" > Install.sh
kdialog --textinputbox "Here is a simple installer that can be put into a shell script file and than executed to get the protocol handler you just created: file location: ${HOME}/${ProgramName}/Install.sh\n\nalso there should be a copy/pasteable and editable version right below this text:" "cd ~/.local/share/applications
echo \"
x-scheme-handler/$Protocol=$Protocol.desktop\" >> mimeapps.list
echo -e \"[Desktop Entry]
Version=1.0
Type=Application
Exec=sh -c \\\"~/$ProgramName/Start.sh %u\\\"
Icon=/usr/share/icons/hicolor/256x256/apps/org.gnome.Nautilus.png
StartupNotify=true
Terminal=$Terminal
Categories=$Categories
MimeType=x-scheme-handler/$Protocol
Name=$ProgramName
Comment=$Description
GenericName=This program was created using ProtocolCreator by TStudios
\" > $Protocol.desktop
cd ~
mkdir $ProgramName
cd $ProgramName
echo -e \"
#!/bin/bash
$Programcode
\" > Start.sh
chmod 770 Start.sh"
echo "[Desktop Entry]
Version=1.0
Type=Application
Exec=sh -c \"~/$ProgramName/Start.sh %u\"
Icon=/usr/share/icons/hicolor/256x256/apps/org.gnome.Nautilus.png
StartupNotify=true
Terminal=$Terminal
Categories=$Categories
MimeType=x-scheme-handler/$Protocol
Name=$ProgramName
Comment=$Description
GenericName=This program was created using ProtocolCreator by TStudios
" > $Protocol.desktop
cd ~
mkdir $ProgramName
cd $ProgramName
echo -e "
$Programcode
echo \"Starting $ProgramName\"
" > Start.sh
chmod 770 Start.sh
chmod 770 Install.sh
echo "cd ~/.local/share/applications
echo \"
x-scheme-handler/$Protocol=$Protocol.desktop\" >> mimeapps.list
echo -e \"[Desktop Entry]
Version=1.0
Type=Application
Exec=sh -c \\\"~/$ProgramName/Start.sh %u\\\"
Icon=/usr/share/icons/hicolor/256x256/apps/org.gnome.Nautilus.png
StartupNotify=true
Terminal=$Terminal
Categories=$Categories
MimeType=x-scheme-handler/$Protocol
Name=$ProgramName
Comment=$Description
GenericName=This program was created using ProtocolCreator by TStudios
\" > $Protocol.desktop
cd ~
mkdir $ProgramName
cd $ProgramName
echo -e \"
#!/bin/bash
$Programcode
\" > Start.sh
chmod 770 Start.sh"

kdialog --textinputbox "                               Credits & co                       " "


Start of developement for this program: 24.5.18
Release Date: 6.5.18
Lines of Code: 173






ProtocolCreator
By: TStudios
Version: 1.1 Pre-1





Copyright (c) 2018 TStudios All Rights Reserved.


"
                      ########################################################
                      #                                                      #
                      #   Copyright (c) 2018 TStudios All Rights Reserved.   #
                      #                                                      #
                      ########################################################
