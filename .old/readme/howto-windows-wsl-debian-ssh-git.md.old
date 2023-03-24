### Windows_WSL_Debian_SSH_Git
Generate SSH keys in Debian on WSL.


#### Make SSH key in Debian on WSL.


```
cd /home/WSLusername/
```

```
mkdir .ssh
```

```
cd .ssh
```

```
ssh-keygen -t rsa -b 4096 -C "youremail@provider.com"
```


#### Copy to WIN10


```
cd /mnt/c/Users/WindowsUserName/
```

```
mkdir .ssh
```

```
cd .ssh
```

```
cp ~/.ssh/id_rsa* .
```

#### *Set id_rsa to read only with right click in Windows File Explorer.*


### Show public key to copy onto remote server.


```
cat ~/.ssh/id_rsa.pub
```


### Configure Git.

```
git config --global user.name "Yourusername"
```

```
git config --global user.email "YourEmail@provider.com"
```

```
git config --global core.autocrlf false
```

Check config with:

```
git config --list --show-origin
```

### Initiate Git Repo.

```
cd /home/WSLusername/
```

```
mkdir repo
```

```
cd repo
```

```
echo "# readme" >> README.md
```

```
git init
```

```
git add README.md
```

```
git commit -m "first commit"
```

#### *Assign first remote repo*

```
git remote add origin git@github.com:yourusername/projectname.git
```

#### *Verify remote repo*

```
git remote -v
```

#### *push to remote*

```
git push -u origin master
```

#### *change remote repo*

```
git remote set-url origin
```

#### *Verify change to remote repo*

```
git remote -v
```
