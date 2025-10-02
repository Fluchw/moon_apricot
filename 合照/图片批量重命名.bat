@echo off
setlocal enabledelayedexpansion
set count=1

rem 循环处理多种常见图片格式的文件
for %%f in (*.jpg *.jpeg *.png *.bmp *.gif) do (
    rem 检查以确保不会重命名脚本文件本身
    if not "%%f" == "%~nx0" (
        rem 统一重命名文件，格式为 "image+数字.png"
        ren "%%f" "image!count!.png"
        set /a count+=1
    )
)

echo 批量重命名完成，扩展名已全部修改为 .png！
pause