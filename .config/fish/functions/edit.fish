function edit
    if type -q codium
        command codium $argv
    else if type -q code
        code $argv
    else if type -q subl
        command subl $argv
    else
        command nano $argv
    end
end