
function rust-analyzer-remove -d "Removes the rust-analyzer binary"
    set fish_trace 1
    rm $HOME/.local/bin/rust-analyzer
end
