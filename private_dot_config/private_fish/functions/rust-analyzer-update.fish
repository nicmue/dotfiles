function rust-analyzer-update -d "Downloads the latest rust-analyer binary"
    set fish_trace 1
    mkdir -p $HOME/.local/bin
    curl -L https://github.com/rust-lang/rust-analyzer/releases/download/nightly/rust-analyzer-aarch64-apple-darwin.gz | gunzip -c - > $HOME/.local/bin/rust-analyzer
    chmod +x $HOME/.local/bin/rust-analyzer
end
