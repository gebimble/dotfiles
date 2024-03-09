function zfslistmonth
    zfs list -r -t snapshot -o name $argv[1] | rg -v 'monthly-$(argv[2])' | sudo xargs -n1 zfs destroy -R
end
