#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# module: main
. ${DIR}/03-config.bash
. ${DIR}/message.bash
. ${DIR}/option.bash
. ${DIR}/04-controller.bash

# module: task
. ${DIR}/03-task-observe.bash
. ${DIR}/04-task-reply.bash

### -- main --

get_options_from_arguments "$@"
