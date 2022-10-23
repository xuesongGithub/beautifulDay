:: 创建临时文件夹
set  emptyDir=tempEmptyDir
rmdir /s /q \\?\"%~dp0%emptyDir%"
mkdir "%~dp0%emptyDir%"

::删除文件和目录
del /f /a /q \\?\%*
rmdir /s /q \\?\%*
        
::删除目录中路径过长文件和目录
robocopy "%~dp0%emptyDir%" %* /purge
        
::删除文件和目录
del /f /a /q \\?\%*
rmdir /s /q \\?\%*

:: 删除临时文件夹
rmdir /s /q \\?\"%~dp0%emptyDir%"


