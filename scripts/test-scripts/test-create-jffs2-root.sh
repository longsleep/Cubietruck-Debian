#!/bin/bash
rm -rf /tmp/fs
mkdir -p /tmp/fs/{bin,dev,etc/init.d,lib,tmp,proc,sbin}
#cp /lib/libc.so.6 /tmp/fs/lib
#cp /lib/ld-linux.so.2 /tmp/fs/lib
#cp /lib/libcrypt.so.1 /tmp/fs/lib
#cp /lib/libm.so.6 /tmp/fs/lib
cp /bin/busybox /tmp/fs/bin
for a in sh ls echo mount ; do
  ln -s /bin/busybox /tmp/fs/bin/$a
done
ln -s /bin/busybox /tmp/fs/sbin/init
cp -a /dev/* /tmp/fs/dev
cat > /tmp/fs/etc/init.d/rcS << EOF
 #!/bin/bash
 echo "Welcome to a JFFS file system"
 mount -t proc proc /proc
 mount -o remount,noatime /dev/root /
EOF
chmod a+x /tmp/fs/etc/init.d/rcS
cp /etc/{passwd,group,hosts} /tmp/fs/etc

