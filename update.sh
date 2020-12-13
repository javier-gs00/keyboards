function update_qmk_keyboard_files() {
  echo "Updating qmk keymaps"
  local source_dir="${HOME}/keyboards/$1/"
  echo "From: ${source_dir}"
  if [ -d $source_dir ]; then
    echo "Source exists"
  else
    exit 1
  fi

  local target_dir="$HOME/qmk_firmware/keyboards/$1/keymaps/javier-gs00/"
  echo "To: ${target_dir}"
  if [ -d $target_dir ]; then
    echo "Target exists"
  else
    exit 1
  fi
  
  echo cp $source_dir* $target_dir
  cp -v $source_dir* $target_dir
}

update_qmk_keyboard_files $1
