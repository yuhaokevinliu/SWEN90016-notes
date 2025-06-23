#!/bin/bash

# Output file
output="main.md"
rm -f "$output"



# Ordered merge of files with section headers
for file in \
    Projects.md \
    SoftwareDevelopmentLifecycle.md \
    RiskManagement.md \
    StakeholderAndCommunication.md \
    Agile.md \
    QualityManagement.md \
    FormalProjectScheduling.md \
    Ethics.md \
    ConfigurationManagement.md \
    ScrumSafe.md \
    

do
    # echo "---" >> $output
    # echo "## $(basename "$file" .md)" >> $output
    echo "" >> $output
    cat "$file" >> $output
    echo "" >> $output
done

echo "✅ Merged into $output"
