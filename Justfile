tag := "v0.5.0-alpha04"

push:
    git push --force
    git tag -d "{{tag}}" || true
    git push --delete origin "{{tag}}" || true
    git tag "{{tag}}"
    git push origin "{{tag}}"
