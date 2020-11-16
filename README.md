# Z1-AggressorScripts

![](https://img.shields.io/badge/Z1-AggressorScripts-red.svg)![](https://img.shields.io/github/languages/top/z1un/Z1-AggressorScripts.svg)![](https://badgen.net/github/stars/z1un/Z1-AggressorScripts)

适用于Cobalt Strike的插件。

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
3. [SharpChassisType](https://github.com/RcoIl/CSharp-Tools/)判断主机类型
4. [SharpNetCheck](https://github.com/uknowsec/SharpNetCheck)探测出网
5. [SharpEventLog](https://github.com/uknowsec/SharpEventLog)(获取系统登录日志，快速定位运维机)
6. [SharpCheckInfo](https://github.com/uknowsec/SharpCheckInfo)(获取多项主机信息)
7. [SharpSQLDump](https://github.com/uknowsec/SharpSQLDump)(快速列出数据库数据)
8. [SharpClipHistory](https://github.com/FSecureLABS/SharpClipHistory)(获取win10剪切板)
9. [SharpAVKB](https://github.com/uknowsec/SharpAVKB)(杀软和补丁对比)
10. [SharpEDRChecker](https://github.com/PwnDexter/SharpEDRChecker)(获取EDR信息)
11. [SharpDir](https://github.com/jnqpblc/SharpDir)(文件搜索)
12. [Everything](https://www.voidtools.com/zh-cn/)(建立http服务文件搜索)

## 定位域管

1. [PsLoggedon](https://docs.microsoft.com/zh-cn/sysinternals/downloads/psloggedon)
2. [PVEFindADUser](https://github.com/chrisdee/Tools/tree/master/AD/ADFindUsersLoggedOn)
3. [netview](https://github.com/mubix/netview)

## 读取密码

1. 探测wifi密码
   - 获取连接过的wifi
   - 获取wifi密码
   - [SharpWifiGrabber](https://github.com/r3nhat/SharpWifiGrabber)(检索Wi-Fi密码)
2. 提取浏览器数据及密码
   - [BrowserGhost](https://github.com/QAX-A-Team/BrowserGhost)(提取浏览器密码)
   - [SharpChromium](https://github.com/djhohnstein/SharpChromium)(提取浏览器数据)
   - [SharpWeb](https://github.com/djhohnstein/SharpWeb)(提取浏览器数据)
3. 本地程序文件密码解密
   - [SharpCloud](https://github.com/chrismaddalena/SharpCloud)(获取云凭证)
   - [SharpDecryptPwd](https://github.com/uknowsec/SharpDecryptPwd)(from uknowsec)
   - [SharpDecryptPwd](https://github.com/RcoIl/SharpDecryptPwd)(from RcoIl)
4. 钓鱼密码窃取
   - [FakeLogonScreen](https://github.com/bitsadmin/fakelogonscreen)(windows锁屏钓鱼)
   - [CredPhisher](https://github.com/matterpreter/OffensiveCSharp/tree/master/CredPhisher)(认证登录框钓鱼)

## 内网扫描（未完成）

1. 探测存活网段

   Writing...

2. 存活端口探测

   Writing...

3. [SharpWebScan](https://github.com/RcoIl/CSharp-Tools/tree/master/SharpWebScan)(探测web服务)

4. 服务弱口令爆破

   Writing...

5. 通用漏洞扫描

   Writing...

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

## 内网穿透

1. [frpmodify](https://github.com/uknowsec/frpModify)无需frpc.ini落地
2. [NATBypass](https://github.com/cw1997/NATBypass)端口转发
3. [iox](https://github.com/EddieIvan01/iox)端口转发与socks5隧道

## 权限维持

1. Skeleton Key
2. 白银票据
3. 黄金票据

## 日志清除

清除系统日志

```bash
wevtutil cl security
wevtutil cl system
wevtutil cl application
wevtutil cl "windows powershell"
```

## 关于

[项目地址](https://github.com/z1un/Z1-AggressorScripts)

[zjun's blog](https://www.zjun.info)

---

# 声明

该项目借鉴了大量其他该类型优秀项目，所有工具皆来自互联网，不保证其安全性。

还有部分模块尚未完成，Writing...

不定期更新。