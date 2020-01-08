volume_cmd = "pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,1,'"

volume = system(volume_cmd)#.scan(/%w%w%(.*?) \\/)

puts volume
