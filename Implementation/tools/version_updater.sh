#!/bin/bash
# Update build number in pubspec.yaml
file="pubspec.yaml"
current_version=$(grep "version:" $file | awk '{print $2}')
version_name=$(echo $current_version | cut -d'+' -f1)
build_number=$(echo $current_version | cut -d'+' -f2)
new_build_number=$((build_number + 1))
sed -i '' "s/version: $current_version/version: $version_name+$new_build_number/" $file
echo "Updated to version: $version_name+$new_build_number"