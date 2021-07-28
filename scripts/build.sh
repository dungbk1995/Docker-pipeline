
#!/bin/bash

if [[ -z "$1" ]]; then
    repos = ("osx-flutter", "linux-flutter")
else
    repos = ("$1")
fi

if [[-z "$2" ]]; then
    version = "latest"
else
    version = ("$2")

fi

for repo in $repos[@]}; do
    ./docker/${repo}/scripts/build.sh $version
done

docker images