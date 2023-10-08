param(
    [string]$repo,
    [string]$owner
)

gh repo create $owner/$repo --private