#!/bin/bash

tepy () {
  template_path="$HOME/.tepy/template"
  template_list=()
  for template in `find $template_path -maxdepth 1 -mindepth 1 -type d`; do
    template_list+=${template##*/}
  done

  select i in $template_list; do
    cp -i -r -v `find "${template_path}/${i}" -maxdepth 1 -mindepth 1` "$pwd"
    break
  done
}
