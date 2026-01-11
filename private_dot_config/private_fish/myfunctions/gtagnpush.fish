function gtagnpush --argument-names tag -d "Create a git tag and push it to origin"
    git tag -a $tag -m $tag
    git push origin $tag
end
