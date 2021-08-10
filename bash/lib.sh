#!/bin/bash
get_os_name(){
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "linux"
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "darwin"
  elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo "cygwin"
  else
    exit 1
  fi
  unset CC_TMP_FOLDER
}

set_file_path(){
  if [ ! "$#" -eq 1 ]
  then
    echo "set_file_path requires the filepath argument"
    exit 1
  fi
  scriptpath=$1
export script_file_path="$( cd "$( dirname $scriptpath)" &> /dev/null && pwd )"
}

repeat(){
	local start=1
	local end=${1:-80}
	local str="${2:-=}"
	local range=$(seq $start $end)
	for i in $range ; do echo -n "${str}"; done
}

box_string(){
  if [ ! "$#" -eq 1 ]
  then
    echo "box_string requires one argument : <string_to_put_in_box>"
    exit 1
  fi
  boxify_string=$1
  w=${#boxify_string}
  echo "version 2. w : ${w}"
  repeat $(($w+4)) "=" ; echo
  printf -- "# ${boxify_string} #\n"
  repeat $(($w+4)) "=" ; echo
}

bash_menu(){
  if [ ! "$#" -eq 1 ]
  then
    echo "bash_menu requires one argument : menu_filepath"
    exit 1
  fi
  menu=$1
  cat $menu | cut -d ',' -f 1 | nl
  os_name=$(get_os_name)
  title="Bash Menu Running on ${os_name}"
  box_string "${title}" 
  echo "Make your choice :"
  read user_choice
  echo "You choosed : ${user_choice}"
  choice=$(head -n ${user_choice} ${menu}  | tail -n 1)
  instruction=$(echo ${choice} | cut -d ',' -f 3)
  if [[ ! $instruction == 'run' ]] 
  then
    echo $instruction
    read parameters
  fi
  run=$(echo ${choice} | cut -d ',' -f 2) 
  $run $parameters
}

