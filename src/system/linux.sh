mnt(){
  sudo mount /dev/sdc ~/Drives/usb
}
umnt(){
  sudo umount ~/Drives/usb
}
search(){
  if [[ $# == 1 ]]; then
    doas find / -name "*$1*" 
  elif [[ $# == 2 ]]; then 
    search $1 | grep $2 
  else
    echo "search takes either 1, or 2  arguments. You gave $#."
  fi
}
s(){
	echo "Are you sure that you want to shut down your computer?"
		read answer
		if [ "$answer" = "yes" ] || [ "$answer" = "y" ]; then
			sudo shutdown -P now
				fi
}

tmp() {
  doas mount -o remount,size=$1G,noatime /tmp
}


