#!/usr/bin/env bash

uni_code_path=$HOME/University
uni_documents_path=$HOME/Documents/University

[ ! -d $uni_documents_path ] && { echo "Error: $uni_documents_path folder is needed"; return 1; }
[ ! -d $uni_code_path ] && { echo "Error: $uni_documents_path folder is needed"; return 1; }


get_new_term_name() {
  local month=$(date +%m)
  local year=$(date +%Y)

  if [[ $month -ge 1 && $month -lt 5 ]] 
  then
    new_term_name="Winter-$year"
  elif [[ $month -ge 5 && $month -lt 9 ]] 
  then
    new_term_name="Summer-$year"
  else
    new_term_name="Fall-$year"
  fi
    

}


case $1 in

  new-term|nt)
    get_new_term_name
    new_term_path=$uni_documents_path/$new_term_name

    [ -d "$new_term_path" ] && { echo "Error: $new_term_path already exists"; return 1; }

    if [ -z "$2" ] 
    then
      echo Error: Number of courses must be given
      return 1
    fi

    for (( i=0; i<$2; i++ ))
    do 

      echo -n "Enter course name: "
      read course_name
      mkdir -p $new_term_path/$course_name
      mkdir -p $uni_code_path/$course_name # creates code folder for course
      echo "$course_name directories created"
    done
  ;;

  cd)
    if [ -z "$2" ] 
    then
      cd $uni_code_path
    else
      cd "$( find $uni_code_path -type d -name "*$2*" | head -n 1 )" # this gets the firse result of the find commad
    fi
  ;;

*)

echo "Error: no command with name $1"
  return 1
;;

esac
