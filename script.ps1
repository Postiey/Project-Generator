#Change this to your own username on your computer
$user_name = "posty"

$file_path = "C:\Users\" + $user_name + "\Desktop\" + $project_name
$extended_file_path = $file_path + $project_name

$html_path = $extended_file_path + "\index.html"


$project_type = Read-Host "Project Type: "
$boilerplate = "C:\Users\posty\Desktop\boilerplate.txt"

function CreateWebProject {
    $project_name = Read-Host "Project Name: "
    New-Item -Path C:\Users\$user_name\Desktop\Development\Web -Name $project_name -ItemType Directory
    CreateWebProjectFiles
    SetBoilerplate
}

function SetBoilerplate {
    $html_boilerplate = Get-Content -Path $boilerplate
    $html_boilerplate | Out-File -FilePath $html_path
}

function CreateWebProjectFiles {
    New-Item -Path C:\Users\$user_name\Desktop\Development\Web\$project_name -Name index.html -ItemType File
    New-Item -Path C:\Users\$user_name\Desktop\Development\Web\$project_name -Name styles.css -ItemType File
    New-Item -Path C:\Users\$user_name\Desktop\Development\Web\$project_name -Name main.js -ItemType File
}


# Create python project
function CreatePythonProject {
    $project_name = Read-Host "Project Name: "
    New-Item -Path C:\Users\$user_name\Desktop\Development\Python -Name $project_name -ItemType Directory
    CreatePythonFiles
}

function CreatePythonFiles {
    New-Item -Path C:\Users\$user_name\Desktop\Development\Python\$project_name -Name main.py -ItemType File
}




switch ($project_type) {
    web {CreateWebProject; Break}
    python {CreatePythonProject; Break}
}
