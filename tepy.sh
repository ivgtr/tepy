#!/bin/bash

tepy () {
  template_path="$HOME/.tepy/template"
  template_list=()
  if [ ! -d $template_path ]; then
    echo "Not found tempate directory."
    mkdir $template_path
    return
  fi

  for template in `find $template_path -maxdepth 1 -mindepth 1 -type d`; do
    template_list+=${template##*/}
  done

  if [ ${#template_list[@]} -gt 0 ]; then
    PS3="Please select a number: "
    select i in $template_list; do
      if [ -n "${i}" ]; then
        cp -i -r -v `find "${template_path}/${i}" -maxdepth 1 -mindepth 1` "$pwd"
        echo "Copying of ${i} completed."
      else
        echo "Cannot select ${REPLY}. Please select a number."
      fi
      break
    done
  else
    echo "Not found tempate. pls add a directory."
    open $template_path
  fi

  return
}
