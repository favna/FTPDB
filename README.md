Features
--------
- Works well with a variety of clients.
- Supports multiple simultaneous clients. The 3DS itself only appears to support enough sockets to perform 4-5 simultaneous data transfers, so it will help if you limit your FTP client to this many parallel requests.

Building
------------------

Install and set up [devkitARM and libctru](http://3dbrew.org/wiki/Setting_up_Development_Environment). 

If you want to make a cia you also have to include [makerom](https://github.com/profi200/Project_CTR/releases) in your `[directories_to_devkitPro]/devkitARM/bin`.

Clone this repository and cd in the resulting directory. Then run the following command:

    make
    
This will create `ftpd.3dsx` and `ftpd.smdh`. Copy these into `/3ds/ftpd/` for usage from the homebrew menu. 

To build a cia with makerom run this command from the same directory

    makerom -f cia -o ftpd.cia -DAPP_ENCRYPTED=false -rsf meta/ftpd.rsf -target t -exefslogo -elf ftpd.elf -icon meta/icon.icn -banner meta/banner.bnr

Supported Commands
------------------

- ABOR
- ALLO (no-op)
- APPE
- CDUP
- CWD
- DELE
- FEAT
- HELP
- LIST
- MDTM
- MKD
- MODE (no-op)
- NLST
- NOOP
- OPTS
- PASS (no-op)
- PASV
- PORT
- PWD
- QUIT
- REST
- RETR
- RMD
- RNFR
- RNTO
- STAT
- STOR
- STRU (no-op)
- SYST
- TYPE (no-op)
- USER (no-op)
- XCUP
- XCWD
- XMKD
- XPWD
- XRMD
