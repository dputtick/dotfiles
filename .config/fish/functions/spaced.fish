function spaced -a cmd
    switch $cmd
    case 'study'
        ruby ~/dev/spaced/spaced_study.rb
    case 'new'
        ruby ~/dev/spaced/spaced_new.rb
    case '*'
        echo "Please choose 'study' or 'new'"
    end
end
