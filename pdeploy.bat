@echo off

echo "PDEPLOY: Deleting extra files..."

:: Delete .deploy, node_modules, public, themes in .deploy_git

set list= ".deploy_git/.deploy_git" ".deploy_git/node_modules" ".deploy_git/public" ".deploy_git/themes"
for %%x in (%list%) do (
    if exist %%x (
        echo "PDEPLOY: Deleting %%x"
        rmdir /s /q %%x
    )
)

echo "PDEPLOY: Done."

