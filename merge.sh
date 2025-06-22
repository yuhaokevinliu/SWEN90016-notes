#!/bin/bash

# Output file
output="main.md"
rm -f "$output"

# Manually ordered list of Markdown files
files=(
    Projects.md,
    SoftwareDevelopmentLifecycle.md,
    RiskManagement.md,
    StakeholderAndCommunication.md,
    Agile.md,
    QualityManagement.md,
    FormalProjectScheduling.md,

)

# Merge in specified order
for file in "${files[@]}"; do
  if [[ -f "$file" ]]; then
    echo "Merging $file..."
    echo -e "\n\n# File: $file\n" >> "$output"
    cat "$file" >> "$output"
  else
    echo "Warning: $file not found!"
  fi
done

echo "✅ Merge complete: $output"
