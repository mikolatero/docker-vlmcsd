# vlmcsd is a replacement for Microsoft's KMS server.

> It contains vlmcs, a KMS test client, mainly for debugging purposes, that also can "charge" a genuine KMS server
designed to run on an always-on or often-on device, e.g. router, NAS Box, ...intended to help people who lost activation of their legally-owned licenses, e.g. due to a change of hardware (motherboard, CPU, ...)<br /><br />
vlmcsd is not a one-click activation or crack tool intended to activate illegal copies of software (Windows, Office, Project, Visio)

## Info / About this docker
Docker based in Alpine OS with vlmcsd compiled from source (GitHub)

## Server Usage:
> $ docker run -d -p 1688:1688 --name vlmcsd mikolatero/vlmcsd

## To view docker log:
Now (thanks to embii74) vlmcsd process send logs to docker.
> $ docker logs vlmcsd . (change 'vlmcsd' with the docker's name)

## Client
### Windows
>slmgr.vbs -upk<br />
slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX<br />
slmgr.vbs -skms DOCKER_IP<br />
slmgr.vbs -ato<br />
slmgr.vbs -dlv<br />

### Office
> CD \Program Files\Microsoft Office\Office16 OR CD \Program Files (x86)\Microsoft Office\Office16<br />
cscript ospp.vbs /sethst:DOCKER_IP<br />
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx<br />
cscript ospp.vbs /act<br />
cscript ospp.vbs /dstatusall<br />

## Sources
> https://forums.mydigitallife.info/threads/50234-Emulated-KMS-Servers-on-non-Windows-platforms<br />
https://github.com/Wind4/vlmcsd<br />

## GVLK keys
> https://technet.microsoft.com/en-us/library/jj612867(v=ws.11).aspx

## Docker Link
> https://hub.docker.com/r/mikolatero/vlmcsd/
