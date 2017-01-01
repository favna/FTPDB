FTPDB
====

Features
--------
- Works well with a variety of clients.
- Supports multiple simultaneous clients. The 3DS itself only appears to support enough sockets to perform 4-5 simultaneous data transfers, so it will help if you limit your FTP client to this many parallel requests.

Latest Builds
-------------

CIA: [click here](https://github.com/Favna/FTPDB/releases/download/1.3/FTPDB.cia)

3DSX: [click here](https://github.com/Favna/FTPDB/releases/download/1.3/FTPDB.zip)

CIA QR Code

![QR](https://cloud.githubusercontent.com/assets/4019718/21583353/5b115e0e-d07d-11e6-9315-fcc17ce3b230.png)

Building
------------------

Install and set up [devkitARM and libctru](http://3dbrew.org/wiki/Setting_up_Development_Environment). 

Clone this repository and cd in the resulting directory. Then run the following command:

    make
    
This will create the `/output` folder with all required files.

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
- SIZE
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

Planned Commands
----------------

- STOU
