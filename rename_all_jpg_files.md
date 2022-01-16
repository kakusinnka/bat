```
@rem 关闭回显
@echo off
@rem 开启变量延迟
setlocal EnableDelayedExpansion

@rem cd到对象目录
cd D:\workSpace\temp

@rem forの標準形：for （オプション） %%アルファベット１文字 in (ループ処理の対象) do コマンド
for %%i in (*_0_0.jpg) do (
  set old_name=%%i
  set new_name=!old_name:~2,-8!.jpg
  rename !old_name! !new_name!
)

@rem 结束批处理文件中环境改动的本地化操作
endlocal
@rem 按任意键继续执行
pause
```
