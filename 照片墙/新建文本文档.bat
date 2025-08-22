@echo off
setlocal enabledelayedexpansion
set "folder=D:\MyFiles"
set count=1

cd /d %folder%

for %%f in (*.png) do (
    if not "%%f" == "%~nx0" (
        ren "%%f" "image!count!.png"
        set /a count+=1
    )
)

echo 批量重命名完成！
pause