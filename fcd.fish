function fcd
    if count $argv > /dev/null
        open $argv
    else
        open $PWD
    end
end
