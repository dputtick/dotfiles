function spaced -a cmd
    switch $cmd
    case 'study'
        ruby ~/dev/spaced/spaced.rb
    case 'new'
        edit ~/dev/spaced/prompts/(date +%s).json
    case '*'
        echo "Please choose 'study' or 'new'"
    end
end
