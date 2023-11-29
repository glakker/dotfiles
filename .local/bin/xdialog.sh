#!/bin/bash
##################################
# dialog fun
##################################

#items=(1 "i3 wm"
#       2 "awesome wm"
#	   3 "herbstluft wm"	)
#
#while choice=$(dialog --ascii-lines --title "Window Manager List" \
#                 --menu "Please select" 10 40 4 "${items[@]}" \
#				 2>&1 >/dev/tty)
#    do
#    case $choice in
#        1) echo "1" ;;
#        2) echo "2" ;;
#        3) echo "3" ;;
#        *) ;; 
#    esac
#done
#clear # clear after user pressed Cancel

cmd=(dialog --keep-tite --title "Window Manager List" \
	--menu " " 10 40 5)

options=(1 "i3 wm"
         2 "awesome wm"
         3 "herbsluft wm"
		)

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            echo "First Option"
            ;;
        2)
            echo "Second Option"
            ;;
        3)
            echo "Third Option"
            ;;
        *)
            echo "zzz"
            ;;
    esac
done
