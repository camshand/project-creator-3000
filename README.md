# project-copy-paster-3000

A powershell script which copies a directory and renames folders &amp; files based on a keyword.


Simply place the "new_project.ps1" & "run_new_project.cmd" files into the same location as a folder with name "1.new_project_TEMPLATE".
When the script runs either as the .ps1 or .cmd version it will prompt for a Project Name input (depending on your use case, you may only be able to run as .cmd).
The Name entered will then be used to create a folder in the same location as where the script was run from, and will copy all of the contents of the "1.new_project_TEMPLATE" folder.
Finally it will rename any files which start with "tmplt" that were in the "1.new_project_TEMPLATE" folder with the project name entered in the new directory.

Example: entering the project name Champion, will result in the file "tmplt_script.docx" in the example .zip to be renamed "Champion_script.docx". This will retain the contents of the document, meaning this is great for spreadsheet templates, or even entire Premiere Pro projects with pre-existing sequences containing adjustment layers all configured in your preferred default state.

The example .zip has a file structure great for Video Creation projects, however this can be modified to a file structure of any project type which you find yourself manually creating or copying often.

The script will stop and alert you if you already have a folder in the directory with the same name as the project name entered.
