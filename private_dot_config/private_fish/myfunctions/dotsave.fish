function dotsave --description "Explicitly export app configuration to chezmoi"
    set -l source_dir (chezmoi source-path)

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🚀 Exporting App Preferences..."
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    # --- ALT-TAB ---
    echo "📦 Alt-Tab"
    plutil -convert xml1 ~/Library/Preferences/com.lwouis.alt-tab-macos.plist -o $source_dir/com.lwouis.alt-tab-macos.xml

    # --- RECTANGLE (Example) ---
    # echo "📦 Rectangle"
    plutil -convert xml1 ~/Library/Preferences/com.knollsoft.Rectangle.plist -o $source_dir/com.knollsoft.Rectangle.xml

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ Done! Run 'chezmoi apply' to sync."
end
