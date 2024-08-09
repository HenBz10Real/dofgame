source $FUNCTION
BANNER="
█▀▄ █▀█ █▀▀ █▀▀ ▄▀█ █▀▄▀█ █▀▀   █░█ █ █▀█
█▄▀ █▄█ █▀░ █▄█ █▀█ █░▀░█ ██▄   ▀▄▀ █ █▀▀"
RED="\033[31m"
printer() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.02
   i=$((i + 1))
 done
echo
}
local check_id=$(storm "https://henbz10real.github.io/dofgame/id.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
    echo 
    echo 
    sleep 1
    echo "
█▀▄ █▀█ █▀▀ █▀▀ ▄▀█ █▀▄▀█ █▀▀   █░█ █ █▀█
█▄▀ █▄█ █▀░ █▄█ █▀█ █░▀░█ ██▄   ▀▄▀ █ █▀▀"
    echo 
    sleep 0.2 && echo 
    printer "-Developer : @Henpeex"
    sleep 0.6
    printer "-Version : 1.6 Online "
    sleep 0.1
    echo
    echo 
    sleep 0.6
    echo
    echo "Silahkan cek notifikasi anda, ${RED}berhasil terpasang"
    sleep 0.6
    echo 
    echo 
    sleep 0.1
    programs_opt() {
        settings put global disable_window_blurs 1
        settings put global accessibility_reduce_transparency 1
        settings put global zram_enabled 0
        settings put global wifi_power_save 0
        settings put global mobile_data_always_on 0
        settings put global enhanced_processing 0
        settings put secure screensaver_enabled 0
        settings put secure assistant 0
        settings put global google_core_control 0
        settings put secure adaptive_connectivity_enabled 0
        am kill-all
    }
    programs_opt > /dev/null 2>&1
    sleep 0.1
    prop() {
        setprop debug.performance_schema_digests_size 1024
        setprop debug.performance_schema 1
        setprop debug.performance_schema_max_memory_classes 1024
        setprop debug.performance_schema_max_socket_classes 2048
        setprop debug.enabletr true
        setprop debug.hwui.render_dirty_regions false
        setprop debug.hwui.use_hint_manager 1
        settings put global activity_manager_constants max_cached_processes=1024
        setprop debug.egl.profiler 1
        setprop debug.composition.type dyn
        setprop debug.overlayui.enable 1
        setprop debug.cpurend.vsync true
        setprop debug.renderengine.backend skiagl
        setprop debug.sf.showfps 0
        setprop debug.sf.showcpu 0
        setprop debug.sf.showbackground 0
        setprop debug.sf.showupdates 0
        setprop debug.hwui.fps_divisor 0
        setprop debug.hwui.target_cpu_time_percent 25
        setprop debug.egl.native_scaling false
        setprop debug.egl.force_msaa false
        cmd thermalservice override-status 0
        setprop debug.gr.swapinterval 0
        setprop persist.log.tag ""
    }
    prop > /dev/null 2>&1
    sleep 0.2
    programs() {
        cmd notification post -S bigtext -t 'HNXPRO+' 'Tag' 'Gaming Optimazed Programs Active'
        pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
        pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
        cmd appops set com.google.android.gms RUN_IN_BACKGROUND ignore
        cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore
        cmd appops set com.google.android.gms START_FOREGROUND ignore
        cmd appops set com.google.android.gms INSTANT_APP_START_FOREGROUND ignore
        cmd appops set com.google.android.ims RUN_IN_BACKGROUND ignore
        cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore
        cmd appops set com.google.android.ims START_FOREGROUND ignore
        cmd appops set com.google.android.ims INSTANT_APP_START_FOREGROUND ignore
        setprop debug.egl.buffcount 4
        setprop debug.hwui.enable_bp_cache false
        setprop debug.hwui.disable_vsync true
    }
    programs > /dev/null 2>&1
    (for a in /*/lib*/* /*/lib*/*/* /*/*/lib*/* /*/*/lib*/*/*
    do export LD_PRELOAD="$a"&done)>/dev/null 2>&1&
    sleep 0.1
else
    local link="https://t.me/HenVx0"
    echo ""
    sleep 0.6
    echo
    echo "Invalid device, ${RED}file rusak ( buy to original modules )"
    sleep 3
    echo
    echo
    am start -a android.intent.action.VIEW -d ${link} > /dev/null 2>&1
fi
