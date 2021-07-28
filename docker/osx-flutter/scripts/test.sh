
#!/bin/bash

project_dir = "$(dirname $(dirname "$0"))"
image_repo = "$(basename "$project_dir")"

echo "Get Dart version"
docker run --rm "${image_repo}:latest" dart --version

echo "Get Flutter version"
docker run --rm "${image_repo}:latest" flutter --version

echo "Get Java version"
docker run --rm "${image_repo}:latest" java --version