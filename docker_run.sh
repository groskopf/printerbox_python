#!/bin/bash
docker run -it --rm --name python --network printerbox_network -v $(pwd)/../printerbox_cupsd/labels:/labels -v $(pwd)/../printerbox_sortkaffe/src:/src --entrypoint python printerbox_sortkaffe_sortkaffe $1

