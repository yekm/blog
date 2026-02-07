## linux kernel development cheatsheet

Root filesystem is a btrfs subvolume prepared with `pacstrap`.
`bees` can be useed for deduplication on the host.
cmdline contains examples for dyndbg and ftrace.


### virsh

```
<domain xmlns:qemu="http://libvirt.org/schemas/domain/qemu/1.0" type="kvm">
...
<kernel>/home/yekm/src/repos/linux/arch/x86/boot/bzImage</kernel>
<cmdline>rootfstype=virtiofs root=/dev/root hostname=example1 console=ttyS0,115200 raid=noautodetect rw loglevel=8 nokaslr tsc=unstable nolapic_timer lsm.debug dyndbg='file security/smack/* +p' ftrace=function_graph ftrace_dump_on_oops ftrace_graph_filter=comma,separated,function_list ftrace_graph_max_depth=4</cmdline>
...
  </devices>
  <qemu:commandline>
    <qemu:arg value="-s"/>
    <qemu:arg value="-S"/>
  </qemu:commandline>
</domain>
...
<filesystem type='mount' accessmode='passthrough'>
  <driver type='virtiofs'/>
  <source dir='/mnt/btrfs/roots/example1'/>
  <target dir='/dev/root'/>
  <address type='pci' domain='0x0000' bus='0x07' slot='0x00' function='0x0'/>
</filesystem>
```

connect to tty console:  
`virsh -c qemu:///system console $name`


### vs-code

`scripts/clang-tools/gen_compile_commands.py`

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "gdb",
            "request": "attach",
            "name": "qemu 1234",
            "executable": "vmlinux",
            "cwd": "${workspaceFolder}",
            "target": ":1234",
            "remote": true
        }
    ]
}
```

### gdb
.gdbinit  
`auto-load safe-path /path/to/kernel/sources/`


sometimes useful Makefile magic
```
#KBUILD_CFLAGS := $(filter-out -Werror,$(KBUILD_CFLAGS))
KBUILD_CFLAGS := $(filter-out -O2,$(KBUILD_CFLAGS))
KBUILD_CFLAGS += -O1 -g -ftree-ter
#KBUILD_CFLAGS += -Wno-declaration-after-statement
```
