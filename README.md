---
LANG: zh_CN.UTF-8
date: 2024-06-25 23:38:00 +0800
---

# CBJQ_SS QuickStart

《尘白禁区切服器》一键启动程序

尘白禁区切服器的一键启动程序项目。此项目用于取代bat文件的第一代一键启动，提供更好的体验。

开源许可协议：*MIT License*

**快速跳转:** (暂无)

## 特点

1. 可以运行期间**无窗口后台**运行。
2. 为新的服务器条目配置**仅需复制并重命名即可**。
3. 支持双运行模式：控制台显示运行（模式一）和无窗口后台运行（模式二）。便于调试。
4. 无窗口模式自动记录日志到文件，便于查错。
5. 模式一可使用自定义窗口图标。

计划中:

- [ ] 更改程序文件图标。

## 使用

双击启动程序即可，可以使用快捷方式。

> 推荐使用无窗口模式。

## 配置

每次为新的服务器条目添加程序**只需**遵循“[复用配置](#复用配置)”即可。

### 复用配置

1. 复制一份程序，从哪都行（反正只要求你做重命名，程序都是一样的）。在`CBJQ_SS.QS.`和`.exe`之间加入服务器条目名称。
   
> 例如：要添加官服`kingsoft`条目：复制“*CBJQ_SS.QS.exe*”，粘贴并重命名为“*CBJQ_SS.QS<span style="color:green">.kingsoft</span>.exe*”。

2. 【可选步骤】右键->发送到桌面快捷方式。

3. 【可选步骤】隐藏窗口（后台运行）：复制新文件名，创建任意文件，重命名为：复制的完整文件名+".hide"。
    > 例如：创建一个名为“*CBJQ_SS.QS.kingsoft.exe<span style="color:green">.hide</span>*”的空文件。

    > 注意：完整文件名包括扩展名，这一步是在修改文件扩展名，请确保你打开了扩展名显示并真的是修改扩展名而不是文件名。

### 高阶配置

> 配置文件名称为：对应程序的文件名（无扩展名）+`.config.json`。
>
> > 例如：程序为“*CBJQ_SS.QS.kingsoft<span style="color:red">.exe</span>*”，配置文件名为“*CBJQ_SS.QS.kingsoft<span style="color:green">.config.json</span>*”

> *请根据你自己的需要决定*，否则请使用默认配置。**默认配置会在首次运行时自动生成**。

> <small>致 json 小白：<br>1. 
> 字符串中，Windows的路径分隔符需要转义，也就是双反斜杠(`\\`)。<br>2. 
> 严格的 json 与 jsonc 或是 json5 不同，不支持注释。<br>3.  json的末尾不能多或者少了逗号，会语法错误。
> </small>

- 修改后端所在：
    - 键：`"path_of_main"`
    - 默认参数值：`".\\CBJQ_SS.main.bat"`
    - 示例参数值：`"..\\CBJQ_SS.main.bat"`
- 修改启动参数：
    - 键：`"start_option_str"`
    - 默认参数值：`"-nopause"`
    - 示例新参数值：`"-nopause -nostart"`
- 修改窗口图标：
    - 键：`"icon"`
    - 默认参数值：`null`
    - 示例新参数值：`".\\icon1.ico"`

> 通知：现在已禁止在配置文件中设置要选择的服务器条目了，请在文件名中指示。

> 有些外部程序启动时不在此程序所在目录启动，导致工作目录错误而读取不到配置。为了应对这种问题，请在本程序所在位置创建"*CBJQ_SS.QS.\*.exe<span style="color:green">.enforce_pwd</span>*"文件。例如："*CBJQ_SS.QS.kingsoft.exe<span style="color:green">.enforce_pwd</span>*"

## 构建

本人使用*GCC 13.2.0*在Windows 10平台上进行编译，供参考。

构建准备工作：运行`make prepare_dir`把所需文件夹/目录建立好。

构建：运行`make`。

清除构建缓存：运行`make clean`。

> 构建备注：
> 
> 在"*program_info.h*"中，宏`BUILD_TIMEZONE`是本人自己的情况。虽然这个宏没有用到，但是为了统一标准，请后来者根据自身情况更新这个宏。


