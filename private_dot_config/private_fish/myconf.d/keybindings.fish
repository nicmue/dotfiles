function expand_command_substitution
    # Get the whole command line and the cursor position
    set -l buff (commandline)
    set -l cursor (commandline -C)

    # Search for a (...) pattern that ends at or just before the cursor
    # This regex looks for ( anything )
    if set -l match (string match -r '\(([^)]+)\)' (string sub -l $cursor "$buff"))
        set -l full_match $match[1]  # The (command)
        set -l inner_cmd $match[2]   # The command inside

        # Execute the inner command
        set -l result (eval $inner_cmd)

        # Replace the (command) with the result in the command line
        # We use string replace to swap the literal (command) for the result
        set -l new_buff (string replace -f "$full_match" "$result" "$buff")

        commandline -r "$new_buff"
        # Move cursor to the end of the newly inserted text
        commandline -C (math $cursor - (string length "$full_match") + (string length "$result"))
    end
end

function fish_user_key_bindings
    bind \ea expand_command_substitution
end
