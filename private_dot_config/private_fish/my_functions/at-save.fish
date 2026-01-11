function at-save --description "Export macOS plist to chezmoi XML"
    if test (count $argv) -ne 1
        echo "Usage: at-save <domain.name>"
        echo "Example: at-save com.lwouis.alt-tab-macos"
        return 1
    end

    set domain $argv[1]
    set source_dir (chezmoi source-path)
    set plist_path "$HOME/Library/Preferences/$domain.plist"
    set xml_output "$source_dir/$domain-settings.xml"

    if not test -f $plist_path
        echo "Error: Could not find plist for $domain at $plist_path"
        return 1
    end

    echo "Exporting $domain to $xml_output..."
    plutil -convert xml1 $plist_path -o $xml_output
    echo "Done! Don't forget to 'chezmoi apply' if you have a refresh script for this app."
end
