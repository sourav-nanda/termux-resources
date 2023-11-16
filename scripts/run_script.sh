#!/bin/bash

# Description:
# This script facilitates the execution of any script present in the specified folder
# located in the device storage. It achieves this by running a script named 'run_script.sh'
# in the specified path. 'run_script.sh' prompts the user to enter the name of the script
# they want to execute.

# Usage:
# 1. Place the scripts you want to execute in the designated folder.
# 2. Run this script to execute 'run_script.sh' in the specified path.
# 3. 'run_script.sh' will prompt you to enter the name of the script you wish to execute,
#    providing a convenient way to run scripts without storing them in the .shortcuts folder.

# Note: Make sure to customize the script_path variable with the correct path to your script folder.


file_name="$(basename "${BASH_SOURCE[0]}")"
script_path="storages/shared/termux-scripts/$file_name"

bash "$script_path"