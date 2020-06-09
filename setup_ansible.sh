#!/usr/bin/env bash

DIRECTORY_PATH=$1

if [[ -z "$DIRECTORY_PATH" ]]; then
    DIRECTORY_PATH='.'
fi

mkdir -p $DIRECTORY_PATH/{group_vars,host_vars,library,module_utils,filter_plugins}
mkdir -p $DIRECTORY_PATH/roles/common/{tasks,handlers,templates,files,vars,defaults,meta,library,module_utils,lookup_plugins}
touch $DIRECTORY_PATH/production \
      $DIRECTORY_PATH/staging \
      $DIRECTORY_PATH/site.yml \
      $DIRECTORY_PATH/roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml
