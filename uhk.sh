############
#!/bin/bash#
###r00_Hx###
#Path usb log
#
LOG1='/etc/log.d/conf/logfiles/kernel.conf'
LOG2='/var/log/messages'
LOG3='/var/log/dmesg'
LOG4='/var/log/kernel'
#Clear history USB logs
#
for path in $LOG1 $LOG2 $LOG3 $LOG4
 do
  grep '' -I -i  $path | sed '/usb/d' |  sed '/USB/d' > $path
 done

func_help () #Help
 {
  echo
  echo "||||||||||||||||||||||||||||||||||||||||||||||||||||"
  echo "|WELCOME!________________________USB_HISTORY_KILLER|"
  echo "|_____________Autoscript clear history_____________|"
  echo "|__________________________________________________|"
  echo "|                                                  |"
  echo "|______________r00_Hx__version:0.01.97_____________|"
  echo "||||||||||||||||||||||||||||||||||||||||||||||||||||"
  echo
 }

while [ -n "$1" ]
 do
  case "$1" in 
   -h) func_help ;;
   *) echo "Error, pleas enter ./uhk -h" ;;
  esac
 shift
done
