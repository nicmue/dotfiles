function secrets --argument-names path -d "Reads a secret from $HOME/.secrets.json with jq"
    jq -r $path $HOME/.secrets.json
end
