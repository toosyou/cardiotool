#!/bin/bash

zip -r $1 ./ -x *.git* -x *.gitignore -x *release.sh -x *.tar -x *.nfs* -x cardio_api/build.sh
printf "@ cardio_api/release_build.sh\n@=cardio_api/build.sh\n" | zipnote -w $1
