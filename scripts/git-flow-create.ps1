param(
    [string]$repo,
    [string]$owner,
    [string]$user
)

function createBranch{
    param (
        [string]$branchName
    )

    git checkout -b $branchName
    git commit --allow-empty -m "init $branchName branch"
    git push origin $branchName

}

gh repo create $owner/$repo --private
git clone git@github.com:$owner/$repo.git "C:\Users\$user\git\$repo"
Set-Location "C:\Users\$user\git\$repo"
createBranch -branchName "main"
createBranch -branchName "bugfix"
createBranch -branchName "dev"


 