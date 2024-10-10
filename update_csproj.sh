#!/bin/bash

# Zoek naar alle .csproj-bestanden en pas de TargetFrameworkVersion aan
find . -name "*.csproj" | while read csproj_file; do
    echo "Processing $csproj_file"
    
    # Vervang alle <TargetFrameworkVersion> of <TargetFramework> tags door <TargetFramework>net6.0</TargetFramework>
    sed -i 's#<TargetFrameworkVersion>.*</TargetFrameworkVersion>#<TargetFramework>net6.0</TargetFramework>#g' "$csproj_file"
    sed -i 's#<TargetFramework>.*</TargetFramework>#<TargetFramework>net6.0</TargetFramework>#g' "$csproj_file"
    
    echo "Updated TargetFramework in $csproj_file"
done

echo "All .csproj files have been updated."

