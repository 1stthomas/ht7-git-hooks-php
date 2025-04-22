#!/bin/bash

echo -e "tracked files:\n"
get_diff_files
echo -e "untracked files:\n"
get_diff_untracked_files
