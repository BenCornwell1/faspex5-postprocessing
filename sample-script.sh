#!/usr/bin/env bash 
 
 
FASPEX_MAIN_STORAGE_ABS_PATH=/packages_data/faspex-packages
PRIVATE_KEY=/packages_data/script/asperatask_dsa
WORKING_FOLDER=${FASPEX_MAIN_STORAGE_ABS_PATH}${faspex_pkg_directory}
 
cd "${WORKING_FOLDER}"
[[ $? -ne 0 ]] && echo "Error in changing Folder ${WORKING_FOLDER}" && exit 1  
 
 
/bin/ascp -q -P 33001  -i  ${PRIVATE_KEY} -T -l 100m --user=asperatask --host=10.21.160.122 --mode=send . /sydisilon/Workflows/Deluxe/ToDeluxe115/Aspera/
 
cd -
