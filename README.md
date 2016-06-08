FTPD is a FTP Server for 3DS.

Features
--------
- Works well with a variety of clients.
- Supports multiple simultaneous clients. The 3DS itself only appears to support enough sockets to perform 4-5 simultaneous data transfers, so it will help if you limit your FTP client to this many parallel requests.

Build and install
------------------

You must first install and set up [devkitARM and libctru](http://3dbrew.org/wiki/Setting_up_Development_Environment).
Clone this repository and cd in the resulting directory.

    make

This will create `ftpd.3dsx` and `ftpd.smdh`. Copy these into `/3ds/ftpd/` for usage from the homebrew menu. If you want to build a cia please look at [this thread on how to convert the `ftpd.elf` to a cia](https://gbatemp.net/threads/converting-elf-to-cia-how.399353/)

The command to build a cia with makerom is

    makerom -f cia -o ftpd.cia -DAPP_ENCRYPTED=false -rsf /meta/fptd.rsf -target t -exefslogo -elf ftpd.elf -icon /meta/icon.icn -banner /meta/banner.bnr

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
