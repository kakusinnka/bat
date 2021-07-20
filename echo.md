### echo
#### 语法
```
echo [<message>]
echo [on | off]
```
#### 参数
| 参数    | 说明                                                        |
| ------- | ----------------------------------------------------------- |
| on, off | 打开或关闭命令回显功能。 默认情况下，命令回显处于启用状态。 |
| message | 指定要在屏幕上显示的文本。                                  |
| /?      | 在命令提示符下显示帮助。                                    |
#### 示例
* 显示当前回显功能。
```
echo
```
* 打开回显功能。
```
echo on
```
* 关闭回显功能。
```
echo off
```
* 全局关闭回显功能。
```
@echo off
```
* 回显空白行。
```
echo.
echo;
echo:
echo/
echo\
echo[
echo]
```
* 回显特殊字符。
```
echo ^|
echo ^<
echo ^>
echo ^^
echo ^&
echo %%
```
* 覆盖回显到文件。
```
echo message > file.txt
```
* 追加回显到文件。
```
echo message001 >> file.txt
echo message002 >> file.txt
```
