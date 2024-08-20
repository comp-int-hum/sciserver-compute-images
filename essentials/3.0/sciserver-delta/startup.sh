#!/bin/bash

export SHELL=/bin/bash

(source /home/idies/local/bin/activate && jupyter lab \
    --no-browser \
    --ip=* \
    --notebook-dir=/home/idies/workspace \
    --NotebookApp.token= \
    --KernelSpecManager.ensure_native_kernel=False \
    --NotebookApp.allow_remote_access=True \
    --NotebookApp.quit_button=False \
    --NotebookApp.base_url=$1 \
)

