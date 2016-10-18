# subversion-docker
Subversion Docker container based on Alpine Edge

#### Features
- Based on Alpine Edge
- Subversion (1.9.4) via Apache2 and mod_dav_svn and svnserve

#### Environment variables
- **UID**: user id (default 991)
- **GID**: group id (default 991)
- **SVNWEBDIR**: svn path for mod_dav_svn (default "svn")

#### Volumes
- **/svn**: the subversion repositories

#### Ports
- **8080**
- **3690**
