`scripts/clang-tools/gen_compile_commands.py`

```
#KBUILD_CFLAGS := $(filter-out -Werror,$(KBUILD_CFLAGS))
KBUILD_CFLAGS := $(filter-out -O2,$(KBUILD_CFLAGS))
KBUILD_CFLAGS += -O1 -g -ftree-ter
#KBUILD_CFLAGS += -Wno-declaration-after-statement
```

```
<domain xmlns:qemu="http://libvirt.org/schemas/domain/qemu/1.0" type="kvm">
...
  </devices>
  <qemu:commandline>
    <qemu:arg value="-s"/>
    <qemu:arg value="-S"/>
  </qemu:commandline>
</domain>
```

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
`auto-load safe-path /path/to/kernel/sources/`
