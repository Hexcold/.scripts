{
    lat[$1] = $2
}

END {
    for (ip in lat) {
        printf "%s %sms\n", ip, lat[ip] | "sort -k2n"
    }
}
