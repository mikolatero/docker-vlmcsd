# vlmcsd is a replacement for Microsoft's KMS server.

> It contains vlmcs, a KMS test client, mainly for debugging purposes, that also can "charge" a genuine KMS server designed to run on an always-on or often-on device, e.g. router, NAS Box, ...intended to help people who lost activation of their legally-owned licenses, e.g. due to a change of hardware (motherboard, CPU, ...)
  
> vlmcsd is not a one-click activation or crack tool intended to activate illegal copies of software (Windows, Office, Project, Visio)

## Info / About this docker
Docker based in Alpine OS with vlmcsd compiled from "source" (Wind4 GitHub)

## Server Usage:
> $ docker run -d -p 1688:1688 --restart=always --name vlmcsd mikolatero/vlmcsd

## To view docker log:
Now (thanks to embii74) vlmcsd process send logs to docker.
> $ docker logs vlmcsd (change 'vlmcsd' with the docker's name)

## Client
### Windows
>slmgr.vbs -upk  
>slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
>slmgr.vbs -skms DOCKER_IP  
>slmgr.vbs -ato  
>slmgr.vbs -dlv  

### Office x86
>cd \Program Files (x86)\Microsoft Office\Office16  
>cscript ospp.vbs /sethst:DOCKER_IP  
>cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx  
>cscript ospp.vbs /act  
>cscript ospp.vbs /dstatusall  

### Office x86_64
>cd \Program Files\Microsoft Office\Office16  
>cscript ospp.vbs /sethst:DOCKER_IP  
>cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx  
>cscript ospp.vbs /act  
>cscript ospp.vbs /dstatusall  

## Sources
> https://forums.mydigitallife.info/threads/50234-Emulated-KMS-Servers-on-non-Windows-platforms  
https://github.com/Wind4/vlmcsd

## GVLK keys
> Windows: https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys  
> Office 2013: https://technet.microsoft.com/en-us/library/dn385360.aspx  
> Office 2016 & 2019: https://technet.microsoft.com/en-us/library/dn385360(v=office.16).aspx

## Docker Link
> https://hub.docker.com/r/mikolatero/vlmcsd/
