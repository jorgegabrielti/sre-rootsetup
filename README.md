# SRE ROOT SETUP
## SETUP to SRE start to work
### ***Development tools***:
  - Visual Code
  - Postman

  
  # Backup Keeper

Backup Keeper is a program for backing up regular files, MySQL and PostgreSQL databases on Linux systems. It works in a centralized way, that is, the execution is done from a main host, applying the configurations in the client hosts according to the defined configuration.
\
\
![Backup Keeper Architecture](img/backup-keeper-arch.jpg)

## Host Manager
\
The host manager uses the [pssh](https://linux.die.net/man/1/pssh) program to connect to multiple hosts simultaneously and apply the backup settings to the clients.

\
**CentOS 7**
```bash
yum install -y pssh
```
\
**CentOS 8**
```bash
dnf install -y pssh
```

## Host client
### Requirements:

1. bc
2. unzip
3. aws cli
4. bzip2
5. xz
6. zabbix-sender

**CentOS 7**
```bash
 yum install -y bc unzip bzip2
```

**CentOS 8**
```bash
dnf install -y bc unzip bzip2 xz
```

### **AWS CLI install**
Aws cli is required to copy to an s3 bucket. It must be installed and configured on the host client. 

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
```bash
/usr/local/bin/aws --version
```

### Create a simbolic link
```bash
ln -s /usr/local/bin/aws /usr/bin/aws
``` 

### And test the command
```bash
aws --version
```

### Configuiring aws profile on your host
\
**Note** :You must set up a user on AWS. See this link
[Creating an IAM user in your AWS account](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_cliwpsapi)


```bash
aws configure
```

In the Host Backup Manager, in **```conf/include/```** configure the file according to the example below:
```

job {
    TYPE=default
    NAME=HOST01-JOB1
    STORAGE=/backup
    FILE=(
        /etc/xattr.conf
        /etc/crontab
        /etc/fstab
        /var/log/secure
    )
    RETENTION=5
    Z_HOST=<ZABBIX HOST>
}
```
\
Apply the configuration
```bash
./backup-keeper.sh
```
