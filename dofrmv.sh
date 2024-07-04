source $FUNCTION
printer() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.03
   i=$((i + 1))
 done
echo
}
  sleep 1
  echo ""
  echo "
█▀▄ █▀█ █▀▀ █▀▀ ▄▀█ █▀▄▀█ █▀▀   █▀█ █▀▄▀█ █░█
█▄▀ █▄█ █▀░ █▄█ █▀█ █░▀░█ ██▄   █▀▄ █░▀░█ ▀▄▀"
  echo ""
  sleep 0.8 && echo
  printer "- Version : 1.0 DOFGAME Remove ( Uninstaller )"
  sleep 0.5
  printer "- Developer : @Henpeex"
  echo 
  echo 
  sleep 1
  printer "Silahkan cek notifikasi anda apakah remove berhasil "
  echo && sleep 1
  echo
  remove() {
        cmd notification post -S bigtext -t 'HNXPRO+' 'Tag' 'Gaming Optimazed Programs Remove'
        settings delete global disable_window_blurs 
        settings delete global accessibility_reduce_transparency 
        settings delete global zram_enabled 
        settings delete global wifi_power_save 
        settings delete global mobile_data_always_on 
        settings delete global enhanced_processing 
        settings delete secure screensaver_enabled 
        settings delete secure assistant
        settings delete global google_core_control
        settings delete secure adaptive_connectivity_enabled
  }
  remove > /dev/null 2>&1
