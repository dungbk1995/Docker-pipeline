
#!/bin/bash

project_dir = "$(dirname $(dirname "$0"))"
image_repo = "$(basename "$project_dir")"

if [[ -z "$1" ]]; then
    image_version = "latest"
else
    image_version = "$1"
fi

echo "Building $image_repo:$image_version image at $project_dir"

docker build \
    -t "$image_repo:$image_version" \
    --build-arg "image_version = $image_version" \
    "$project_dir/src"
    