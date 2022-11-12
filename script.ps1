$project_type = Read-Host "Project Type: "
$boilerplate = "C:\Users\posty\Desktop\boilerplate.txt"

function SetBoilerplate {
    $html_boilerplate = Get-Content -Path $boilerplate
    $html_boilerplate | Out-File -FilePath C:\Users\posty\Desktop\$project_name\index.html
}

function WebFileSystem {
    New-Item -Path C:\Users\posty\Desktop\$project_name -Name index.html -ItemType File
    New-Item -Path C:\Users\posty\Desktop\$project_name -Name styles.css -ItemType File
    New-Item -Path C:\Users\posty\Desktop\$project_name -Name main.js -ItemType File
}

if ($project_type -eq "Web" -or $project_type -eq "web") {
    $project_name = Read-Host "Project Name: "
    New-Item -Path C:\Users\posty\Desktop\ -Name $project_name -ItemType Directory
    WebFileSystem
    SetBoilerplate
}
