function zfslistmonth
    zfs list -r -t snapshot -o name $argv[1] | rg monthly
end
