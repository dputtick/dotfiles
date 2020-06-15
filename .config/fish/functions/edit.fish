function edit
    if type -q code
        command code $argv
    else if type -q codium
        command codium $argv
    else if type -q subl
        command subl $argv
    else
        command nano $argv
    end
end