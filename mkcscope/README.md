# mkcscope
1. Set `mkcscope.sh` file permission. 
```
$ sudo chmod 755 mkcscope.sh
```

2. `mkcscope.sh` should be executed at the root of your project source. 

3. FYI, following command will make you utilize `mkcscope.sh` more conveniently.
```
$ sudo cp mkcscope.sh /usr/bin/mkcscope
```
or
```
$ sudo ln -s mkcscope.sh /usr/bin/mkcscope
```
Use like below.
```
$ cd to/your/project/root
$ ctags -R	# ctags is prerequisite for cscope
$ mkcscope
```
