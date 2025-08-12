#!/run/current-system/sw/bin/bash
SOCKET="/home/ipoteka/.config/mpd/socket"

while true; do
    # Extract *only* the title tag
    title=$(mpc --host "$SOCKET" --format '%title%' current)
    state=$(mpc --host "$SOCKET" status | sed -n '2p' | grep -o '\[.*\]' | tr -d '[]')

    # If title tag is empty, fall back to the default current output
    if [[ -z "$title" ]]; then
        title=$(mpc --host "$SOCKET" current)
    fi

    case "$state" in
        playing)
            echo "mpd_title|string|▶ $title"
            ;;
        paused)
            echo "mpd_title|string|⏸ $title"
            ;;
        stopped|"")
            echo "mpd_title|string|■"
            ;;
    esac

    echo    # blank line for yambar update
    sleep 1
done
