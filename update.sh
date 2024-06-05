#!/bin/bash

#* Update the local development branch
git checkout development
git pull origin development

#* Manually define the list of feature branches
feature_branches=(
    "design-diagram"
    "user-interface"
    "view-students"
)

for branch in "${feature_branches[@]}"; do
    git checkout "$branch"
    
    git merge development

    #* Resolve any conflicts here manually if they occur
    
    git push origin "$branch"
done

#* Switch back to the development branch
git checkout development