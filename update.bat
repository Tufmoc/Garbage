@echo off
del 点我使用.bat
del 更新日志.txt
:download
(echo 正在下载新版本)&(wget -q --show-progress https://ghproxy.com/https://raw.githubusercontent.com/Tufmoc/W.Tools-Ver.Bat/main/点我使用.bat)&(wget -q --show-progress https://ghproxy.com/https://raw.githubusercontent.com/Tufmoc/W.Tools-Ver.Bat/main/更新日志.txt)&(cls&goto check)
:check
if exist 点我使用.bat (cls&goto check2) else (echo 下载失败,正在重新下载)&(cls&goto download)
:check2
if exist 更新日志.txt (echo 更新完成!两秒后脚本自动关闭!)&(timeout /nobreak /t 2)&(start 更新日志.txt)&(del update.bat)&(exit) else (echo 下载失败,正在重新下载)&(cls&goto download)