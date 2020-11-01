function update_qmk_keyboard_files() {
  local source_dir="./$1/*"
  local target_dir="$HOME/qmk_firmware/keyboards/$1/keymaps/javier-gs00" 
  
  if [[ -d $source_dir && -d $target_dir ]]; then
    echo cp -r $source_dir $target_dir
    cp -Rv $source_dir $target_dir
    exit 0
  else
    exit 1
  fi
}

update_qmk_keyboard_files $1
