function ra-update -d "Downloads the latest rust-analyer binary"
    mkdir -p $HOME/.local/bin
    curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-aarch64-apple-darwin.gz  | gunzip -c - > $HOME/.local/bin/rust-analyzer
    chmod +x $HOME/.local/bin/rust-analyzer
end

function ra-remove -d "Removes the rust-analyzer binary"
    rm -rf $HOME/.local/bin/rust-analyzer
end
