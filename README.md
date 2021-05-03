# Z1-AggressorScripts

![](https://img.shields.io/badge/Z1-AggressorScripts-red.svg)  ![](https://img.shields.io/github/languages/top/z1un/Z1-AggressorScripts.svg)  ![](https://badgen.net/github/stars/z1un/Z1-AggressorScripts)

适用于Cobalt Strike 3.x & 4.x 的插件。

2021.05.03 更新:

- 去除提权和日志清理模块，这部分可以使用其他的插件或者梼杌等。
- 默认上传目录替换为`C:\Users\Public`，相较而言它比`C:\Windows\Temp`更加简洁。
- fscan，frp等软件更新，并新增[HackBrowserData](https://github.com/moonD4rk/HackBrowserData)工具。

2020.12.20 更新：

- 更新[fscan](https://github.com/shadow1ng/fscan)工具。

2020.11.21 更新：

- 辅助模块的zip打包更换成uknow师傅的[SharpZip](https://github.com/uknowsec/SharpZip)，内存加载无需上传。
- 权限维持模块新增创建自启动运行，包括添加注册表，添加启动文件夹，创建启动服务三种方式。

2020.11.20 更新：

- 内网穿透模块新增支持nps。

- frp由之前的upx压缩版本换成未压缩版，upx压缩后的frp32位和nps都会在360上报毒，索性全部换成原版。但是这就项目导致体积由20几M增加到了30几M。

  windows-npc64位通过cs上传后运行会报错，不知道是不是我个人环境问题，所以npc只上传32位，不影响使用。

  

![image-20201119120243146](https://oss.zjun.info/zjun.info/20201119120244.png)




## 提权

1. [watson](https://github.com/rasta-mouse/Watson)获取可提取漏洞
2. [sweetpotato](https://github.com/CCob/SweetPotato)
3. juicypotato
4. MS14-058
5. MS15-051
6. MS16-016
7. MS16-032
8. MS16-135
9. CVE-2020-0796
10. [SharpBypassUAC](https://github.com/FatRodzianko/SharpBypassUAC)

## 信息搜集

1. 单机常用命令
   - systeminfo
   - whoami /all
   - ipconfig /all
   - 查看路由表
   - 查看arp缓存
   - 查看用户信息
   - 查看安装程序和版本信息
   - 查看安装的补丁
   - 查看运行的进程及路径
   - 查看进程详细信息
   - 查看服务
   - 查看防火墙配置
   - 查看计划任务
   - 查看启动程序信息
   - 查看在线用户
   - 查看开机时间
   - 查看powershell v5历史命令
   - 查看最近使用的项目
   - 查看SMB指向路径

2. 域环境常用命令
   - [AdFind](http://www.joeware.net/freetools/tools/adfind/index.htm)
     - 列出域控制器名称
     - 查询当前域中在线的计算机
     - 查询当前域中在线的计算机(只显示名称和操作系统)
     - 查询当前域中所有计算机
     - 查询当前域中所有计算机(只显示名称和操作系统)
     - 查询域内所有用户
     - 查询所有GPO
   - 查询域
   - 查看域管
   - 查看域用户详细信息
   - 查看当前登陆域
   - 查看时间服务器
   - 显示当前域的计算机列表
   - 查看登陆本机的域管
   - 查看所有域用户
   - 查看域内所有用户组列表
   - 查看主域控制器
   - 查看域控列表
   - 查看域控主机名
   - 获取域信任信息
   - 获取域密码信息
   - 查看所有域成员计算机列表
   - 查看域内所有计算机

3. [SharpChassisType](https://github.com/RcoIl/CSharp-Tools/tree/master/SharpChassisType)判断主机类型

   ```
   用于判断当前机器类型（桌面计算机、笔记本等判断）。
   ```

4. [SharpNetCheck](https://github.com/uknowsec/SharpNetCheck)探测出网

   ```
   在渗透过程中，对可以出网的机器是十分渴望的。在收集大量弱口令的情况下，一个一个去测试能不能出网太麻烦了。所以就有了这个工具，可配合如wmiexec、psexec等横向工具进行批量检测，该工具可以在dnslog中回显内网ip地址和计算机名，可实现内网中的快速定位可出网机器。
   ```

5. [SharpEventLog](https://github.com/uknowsec/SharpEventLog)(获取系统登录日志，快速定位运维机)

   ```
   读取登录过本机的登录失败或登录成功（4624，4625）的所有计算机信息，在内网渗透中快速定位运维管理人员。
   ```

6. [SharpCheckInfo](https://github.com/uknowsec/SharpCheckInfo)(获取多项主机信息)

   ```
   收集目标主机信息，包括最近打开文件，系统环境变量和回收站文件等等。
   ```

7. [SharpSQLDump](https://github.com/uknowsec/SharpSQLDump)(快速列出数据库数据)

   ```
   内网渗透中快速获取数据库所有库名，表名，列名。具体判断后再去翻数据，节省时间。适用于mysql，mssql。
   ```

8. [SharpClipHistory](https://github.com/FSecureLABS/SharpClipHistory)(获取win10剪切板)

   ```
   可用于从1809 Build版本开始读取Windows 10中用户剪贴板历史记录的内容。
   ```

9. [SharpAVKB](https://github.com/uknowsec/SharpAVKB)(杀软和补丁对比)

   ```
   Windows杀软对比和补丁号对比。
   ```

10. [SharpEDRChecker](https://github.com/PwnDexter/SharpEDRChecker)(获取EDR信息)

    ```
    检查正在运行的进程，进程元数据，加载到当前进程中的Dll以及每个DLL元数据，公共安装目录，已安装的服务和每个服务二进制元数据，已安装的驱动程序和每个驱动程序元数据，所有这些都存在已知的防御性产品，例如AV，EDR和日志记录工具。
    ```

11. [SharpDir](https://github.com/jnqpblc/SharpDir)(文件搜索)

    ```
    可在本地和远程文件系统中搜索文件。
    ```

12. [Everything](https://www.voidtools.com/zh-cn/)(建立http服务文件搜索)

## 定位域管

1. [PsLoggedon](https://docs.microsoft.com/zh-cn/sysinternals/downloads/psloggedon)

   ```
   微软官方工具。
   ```

2. [PVEFindADUser](https://github.com/chrisdee/Tools/tree/master/AD/ADFindUsersLoggedOn)

   ```
   可用于查找Active Directory用户的登录位置和/或查找谁在特定计算机上登录。这应该包括本地用户，通过RDP登录的用户，用于运行服务和计划任务的用户帐户（仅当该任务当时正在运行时
   ```

3. [netview](https://github.com/mubix/netview)

   ```
   Netview是枚举工具。它使用（带有-d）当前域或指定的域（带有-d域）来枚举主机。如果希望指定包含主机列表的文件，也可以使用-f。您希望排除的任何主机名都可以在带有-e的列表中指定。如果要查询域组并突出显示这些用户的登录位置，请使用-g指定该组。
   ```

## 读取密码

1. logonpasswords

2. Krbtgt hash

3. 探测wifi密码

   - 获取连接过的wifi

   - 获取wifi密码

   - [SharpWifiGrabber](https://github.com/r3nhat/SharpWifiGrabber)(检索Wi-Fi密码)

     ```
     Sharp Wifi Password Grabber以明文形式从保存在工作站上的所有WLAN配置文件中检索Wi-Fi密码。
     ```

4. 修改注册表dump明文密码

   - 显示明文
   - 强制锁屏
   - 隐藏明文

5. 提取浏览器数据及密码

   - [BrowserGhost](https://github.com/QAX-A-Team/BrowserGhost)(提取浏览器密码)

     ```
     奇安信出品。这是一个抓取浏览器密码的工具，后续会添加更多功能
     ```

   - [SharpChromium](https://github.com/djhohnstein/SharpChromium)(提取浏览器数据)

     ```
     用于检索Chromium数据，例如Cookie，历史记录和保存的登录名。
     ```

   - [SharpWeb](https://github.com/djhohnstein/SharpWeb)(提取浏览器数据)

     ```
     可从Google Chrome，Mozilla Firefox和Microsoft Internet Explorer / Edge检索保存的浏览器凭据。
     ```

6. 本地程序文件密码解密
   - [SharpCloud](https://github.com/chrismaddalena/SharpCloud)(获取云凭证)

     ```
     用于检查是否存在与AWS，Microsoft Azure和Google Compute相关的凭证文件。
     ```

   - [SharpDecryptPwd](https://github.com/uknowsec/SharpDecryptPwd)(from uknowsec)

     ```
     对密码已保存在 Windwos 系统上的部分程序进行解析,包括：Navicat,TeamViewer,FileZilla,WinSCP,Xmangager系列产品（Xshell,Xftp)。
     ```

   - [SharpDecryptPwd](https://github.com/RcoIl/SharpDecryptPwd)(from RcoIl)

     ```
     该程序主要是针对已保存在 Windows 系统上的程序密码进行解密。目前支持 Navicat 系列、Xmanager 系列、TeamViewer、FileZilla 客户端、Foxmail、RealVNC 服务端、TortoiseSVN、WinSCP、Chrome 全版本。
     ```

7. 钓鱼密码窃取
   - [FakeLogonScreen](https://github.com/bitsadmin/fakelogonscreen)(windows锁屏钓鱼)

     ```
     FakeLogonScreen是用于伪造Windows登录屏幕以获取用户密码的实用程序。输入的密码已针对Active Directory或本地计算机进行了验证，以确保密码正确，然后将其显示在控制台上或保存到磁盘。
     ```

   - [CredPhisher](https://github.com/matterpreter/OffensiveCSharp/tree/master/CredPhisher)(认证登录框钓鱼)

     ```
     使用CredUIPromptForWindowsCredentialsWinAPI函数提示当前用户提供其凭据。支持一个参数以提供将显示给用户的消息文本。
     ```

## 内网扫描

1. [SharpWebScan](https://github.com/RcoIl/CSharp-Tools/tree/master/SharpWebScan)(探测web服务)

   ```
   扫描 C段 的 Web 应用，获取 Title，可自定义多端口。外网也非常好用
   ```

2. [TailorScan](https://github.com/uknowsec/TailorScan)(缝合怪内网扫描器)

   ```
   缝合怪内网扫描器，支持端口扫描，识别服务，获取title，扫描多网卡，ms17010扫描，icmp存活探测。
   ```

3. [fscan](https://github.com/shadow1ng/fscan)(一键大保健)

   ```
   一款内网扫描工具，方便一键大保健。支持主机存活探测、端口扫描、常见服务的爆破、ms17010、redis批量写私钥、计划任务反弹shell、读取win网卡信息等。
   ```

4. [crack](https://github.com/oksbsb/crack)爆破

   ```
   爆破工具,支持 ftp ssh smb mysql mssql postgres。
   ```

5. [SharpSpray](https://github.com/jnqpblc/SharpSpray)(域内密码爆破)

   ```
   可以使用LDAP对域的所有用户执行密码喷雾攻击。
   ```

## RDP相关

1. 查看RDP端口
2. 探测RDP服务是否开启
3. 开启RDP服务
4. 关闭RDP服务
5. 添加防火墙放行RDP规则

## 添加用户

1. 激活guest用户

2. 添加域管用户

3. 创建管理员用户

4. [add-admin](https://github.com/lengjibo/RedTeamTools/blob/master/windows/bypass360%E5%8A%A0%E7%94%A8%E6%88%B7/README.md)添加用户bypass

   ```
   执行后自动添加一个账户进入管理员组。
   帐号：hacker 密码：P@ssw0rd
   ```

## 内网穿透

1. [frpmodify](https://github.com/uknowsec/frpModify)无需frpc.ini落地

   ```
   frp指定参数版（无需frpc.ini落地）
   ```

2. [nps](https://github.com/ehang-io/nps)无配置文件落地

   ```
   一款轻量级、高性能、功能强大的内网穿透代理服务器。支持tcp、udp、socks5、http等几乎所有流量转发。使用参考：https://mp.weixin.qq.com/s/zI04_kxVFWdnegctAzNmmg。
   ```


3. [NATBypass](https://github.com/cw1997/NATBypass)端口转发

   ```
   一款lcx（htran）在golang下的实现。
   通过主动连接具有公网IP的电脑打通隧道可实现内网穿透，让内网主机提供的服务能够借助外网主机来访问。软件实现的端口转发，透明代理，在主机限制入站规则但未限制出站规则的特定情况下可绕过防火墙。
   ```

4. [iox](https://github.com/EddieIvan01/iox)端口转发与socks5隧道

   ```
   golang实现，端口转发和内网代理工具，功能类似于lcx/ew，但是比它们更好。
   ```

## 权限维持

1. Skeleton Key
2. 白银票据
3. 黄金票据
4. 自启动运行
   - 创建自启动服务
   - 启动文件夹
   - 添加注册表实现自启动


## 日志清除

清除系统日志

```bash
wevtutil cl security
wevtutil cl system
wevtutil cl application
wevtutil cl "windows powershell"
```

## 辅助模块

1. certutil下载文件

   ```bash
   certutil.exe -urlcache -split -f $url $path
   ```

2. vbs下载文件

   ```
   vbs脚本远程下载文件，命令行传参，执行完毕自动清除vbs下载脚本。
   ```

3. [SharpZip](https://github.com/uknowsec/SharpZip)(压缩文件)

   ```
   对目录或文件进行压缩打包。
   ```

4. [SharpOSS](https://github.com/uknowsec/SharpOSS)(上传文件)

   ```
   “内网渗透的本质是信息收集”,尝尝会收集到一些体积较大的文件或者是源码进行分析利用。而网络情况复杂的情况下，通过菜刀一类webshell管理工具或CS一类C2工具来进行传输文件是非常慢的，而且aliyunOSS是白域名，比cs传输文件更为隐秘。所以会用到AliyunOSS来进行快速文件传输。所以就看了一下aliyun-oss-csharp-sdk实现了这个功能。
   ```

## 关于

[zjun](https://www.zjun.info)

[项目地址](https://github.com/z1un/Z1-AggressorScripts)

# 声明

该项目借鉴了大量其他该类型优秀项目，所有工具皆来自互联网，不保证其安全性。

长期更新。