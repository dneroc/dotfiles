#!/bin/bash

workspace_name=$(i3-msg -t get_workspaces \
                              | jq '.[] | select(.focused==true).name' \
                              | cut -d"\"" -f2)

workspace_index="${workspace_name:0:1}"

i3-input -F "rename workspace to \"$workspace_index%s\"" -P 'New name: '

