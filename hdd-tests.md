
```
    PCIBridge L#1 (busid=0000:00:01.0 id=8086:2f02 class=0604(PCIBridge) link=1.97GB/s buses=0000:[01-01] PCIVendor="Intel Corporation" PCIDevice="Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 1")
      PCI L#0 (busid=0000:01:00.0 id=1b21:1166 class=0106(SATA) link=1.97GB/s PCISlot=2 PCIVendor="ASMedia Technology Inc." PCIDevice="ASM1166 Serial ATA Controller")
        Block(Disk) L#0 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:192 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UP0J) "sdm"
        Block(Disk) L#1 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:160 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5N21J) "sdk"
        Block(Disk) L#2 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:128 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5U0WJ) "sdi"
        Block(Disk) L#3 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:208 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK33AKJ) "sdn"
        Block(Disk) L#4 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:176 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5JN6J) "sdl"
        Block(Disk) L#5 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:144 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TWTJ) "sdj"


# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=61024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{m,k,i,n,l,j}
      sdm: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdk: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdi: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdn: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdl: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdj: 4.00GiB [ 177MiB/s] [ 177MiB/s]

real    0m23.278s
user    0m0.654s
sys 0m48.717s

########################################################################################################################################

    PCIBridge L#3 (busid=0000:00:02.0 id=8086:2f04 class=0604(PCIBridge) link=1.97GB/s buses=0000:[03-03] PCIVendor="Intel Corporation" PCIDevice="Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 2")
      PCI L#2 (busid=0000:03:00.0 id=1b21:1166 class=0106(SATA) link=1.97GB/s PCISlot=6 PCIVendor="ASMedia Technology Inc." PCIDevice="ASM1166 Serial ATA Controller")
        Block(Disk) L#7 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:224 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK56W9J) "sdo"
        Block(Disk) L#8 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:32 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UNZJ) "sds"
        Block(Disk) L#9 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:0 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK31NYJ) "sdq"
        Block(Disk) L#10 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:48 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TU1J) "sdt"
        Block(Disk) L#11 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:16 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UTJJ) "sdr"
        Block(Disk) L#12 (Size=500107608 SectorSize=512 LinuxDeviceID=8:240 Model=SSD_512GB Revision=HPS2227O SerialNumber=YS202010885162HP) "sdp"



# time parallel --tty -j6 'dd if=/dev/{} bs=4M count=1024 skip=61024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{o,s,q,t,r,p}
      sdo: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sds: 4.00GiB [ 180MiB/s] [ 180MiB/s]
      sdq: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdt: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdr: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdp: 4.00GiB [ 250MiB/s] [ 250MiB/s] ###### ssd

real    0m23.011s
user    0m0.612s
sys 0m50.259s

################################################################################################################################

    PCIBridge L#4 (busid=0000:00:03.0 id=8086:2f08 class=0604(PCIBridge) link=1.97GB/s buses=0000:[04-04] PCIVendor="Intel Corporation" PCIDevice="Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 3")
      PCI L#3 (busid=0000:04:00.0 id=1b21:1166 class=0106(SATA) link=1.97GB/s PCISlot=4 PCIVendor="ASMedia Technology Inc." PCIDevice="ASM1166 Serial ATA Controller")
        Block(Disk) L#13 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:128 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TY1J) "sdy"
        Block(Disk) L#14 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:96 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5B1EH) "sdw"
        Block(Disk) L#15 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:64 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UMSJ) "sdu"
        Block(Disk) L#16 (Size=500107608 SectorSize=512 LinuxDeviceID=65:144 Model=SSD_512GB Revision=HPS2227O SerialNumber=YS202010053375HP) "sdz"
        Block(Disk) L#17 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:112 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5US4J) "sdx"
        Block(Disk) L#18 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:80 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5MPYJ) "sdv"


# time parallel --tty -j6 'dd if=/dev/{} bs=4M count=1024 skip=21024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{y,w,u,z,x,v}
      sdy: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdw: 4.00GiB [ 180MiB/s] [ 180MiB/s]
      sdu: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdz: 4.00GiB [ 259MiB/s] [ 259MiB/s] ######### ssd
      sdx: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdv: 4.00GiB [ 179MiB/s] [ 179MiB/s]

real    0m23.014s
user    0m0.591s
sys 0m43.505s


# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=81024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{y,w,u,z,x,v,o,s,q,t,r,p,m,k,i,n,l,j}
      sdy: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdw: 4.00GiB [ 176MiB/s] [ 176MiB/s]
      sdu: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdz: 4.00GiB [ 284MiB/s] [ 284MiB/s]
      sdx: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdv: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdo: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sds: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdq: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdt: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdr: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdp: 4.00GiB [ 304MiB/s] [ 304MiB/s]
      sdm: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdk: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdi: 4.00GiB [ 176MiB/s] [ 176MiB/s]
      sdn: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdl: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdj: 4.00GiB [ 177MiB/s] [ 177MiB/s]

real    0m23.415s
user    0m1.781s
sys 2m44.920s

###################################################################################################################################



    PCI L#7 (busid=0000:00:1f.2 id=8086:8d02 class=0106(SATA) PCIVendor="Intel Corporation" PCIDevice="C610/X99 series chipset 6-Port SATA Controller [AHCI mode]")
      Block(Disk) L#25 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:80 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TT1J) "sdf"
      Block(Disk) L#26 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:96 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK31NBJ) "sdg"
      Block(Disk) L#27 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:64 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UM2J) "sde"
      Block(Disk) L#28 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:112 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK33B0J) "sdh"

# time parallel --tty -j6 'dd if=/dev/{} bs=4M count=1024 skip=1024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{f,g,e,h}
      sdf: 4.00GiB [ 180MiB/s] [ 180MiB/s]
      sdg: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sde: 4.00GiB [ 179MiB/s] [ 179MiB/s]
      sdh: 4.00GiB [ 177MiB/s] [ 177MiB/s]

real    0m23.171s
user    0m0.483s
sys 0m29.106s



    PCI L#4 (busid=0000:00:11.4 id=8086:8d62 class=0106(SATA) PCIVendor="Intel Corporation" PCIDevice="C610/X99 series chipset sSATA Controller [AHCI mode]")
      Block(Disk) L#19 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:48 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TX7J) "sdd"
      Block(Disk) L#20 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:16 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5RWTJ) "sdb"
      Block(Disk) L#21 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:32 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK32NNJ) "sdc"
      Block(Disk) L#22 (Size=5860522584 SectorSize=512 LinuxDeviceID=8:0 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5U13J) "sda"

# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=81024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{a,b,c,d}
      sda: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdb: 4.00GiB [ 174MiB/s] [ 174MiB/s]
      sdc: 4.00GiB [ 178MiB/s] [ 178MiB/s]
      sdd: 4.00GiB [ 178MiB/s] [ 178MiB/s]

real    0m23.615s
user    0m0.535s
sys 0m31.127s








# lspci -vv | grep -e ^0.: -e LnkCap:
00:00.0 Host bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2 (rev 02)
        LnkCap: Port #0, Speed 5GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:01.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 1 (rev 02) (prog-if 00 [Normal decode])
        LnkCap: Port #1, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:01.1 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 1 (rev 02) (prog-if 00 [Normal decode])
        LnkCap: Port #2, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:02.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 2 (rev 02) (prog-if 00 [Normal decode])
        LnkCap: Port #3, Speed 8GT/s, Width x16, ASPM L1, Exit Latency L1 <16us
00:03.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 3 (rev 02) (prog-if 00 [Normal decode])
        LnkCap: Port #7, Speed 8GT/s, Width x16, ASPM L1, Exit Latency L1 <16us
00:05.0 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 Address Map, VTd_Misc, System Management (rev 02)
00:05.1 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 Hot Plug (rev 02)
00:05.2 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 RAS, Control Status and Global Errors (rev 02)
00:05.4 PIC: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 I/O APIC (rev 02) (prog-if 20 [IO(X)-APIC])
00:11.0 Unassigned class [ff00]: Intel Corporation C610/X99 series chipset SPSR (rev 05)
00:11.4 SATA controller: Intel Corporation C610/X99 series chipset sSATA Controller [AHCI mode] (rev 05) (prog-if 01 [AHCI 1.0])
00:14.0 USB controller: Intel Corporation C610/X99 series chipset USB xHCI Host Controller (rev 05) (prog-if 30 [XHCI])
00:1a.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #2 (rev 05) (prog-if 20 [EHCI])
00:1b.0 Audio device: Intel Corporation C610/X99 series chipset HD Audio Controller (rev 05)
00:1c.0 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #1 (rev d5) (prog-if 00 [Normal decode])
        LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <1us, L1 <4us
00:1c.2 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #3 (rev d5) (prog-if 00 [Normal decode])
        LnkCap: Port #3, Speed 5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <512ns, L1 <4us
00:1c.4 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #5 (rev d5) (prog-if 00 [Normal decode])
        LnkCap: Port #5, Speed 5GT/s, Width x4, ASPM L0s L1, Exit Latency L0s <512ns, L1 <4us
00:1d.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #1 (rev 05) (prog-if 20 [EHCI])
00:1f.0 ISA bridge: Intel Corporation C610/X99 series chipset LPC Controller (rev 05)
00:1f.2 SATA controller: Intel Corporation C610/X99 series chipset 6-Port SATA Controller [AHCI mode] (rev 05) (prog-if 01 [AHCI 1.0])
00:1f.3 SMBus: Intel Corporation C610/X99 series chipset SMBus Controller (rev 05)
01:00.0 SATA controller: ASMedia Technology Inc. ASM1166 Serial ATA Controller (rev 02) (prog-if 01 [AHCI 1.0])
        LnkCap: Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
02:00.0 Non-Volatile memory controller: Netac Technology Co.,Ltd PCIe 3 NVMe SSD (DRAM-less) (rev 01) (prog-if 02 [NVM Express])
        LnkCap: Port #0, Speed 8GT/s, Width x4, ASPM not supported
03:00.0 SATA controller: ASMedia Technology Inc. ASM1166 Serial ATA Controller (rev 02) (prog-if 01 [AHCI 1.0])
        LnkCap: Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
04:00.0 SATA controller: ASMedia Technology Inc. ASM1166 Serial ATA Controller (rev 02) (prog-if 01 [AHCI 1.0])
        LnkCap: Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
pcilib: sysfs_read_vpd: read failed: No such device06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8211/8411 PCI Express Gigabit Ethernet Controller (rev 06)

        LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s unlimited, L1 <64us
07:00.0 Non-Volatile memory controller: Silicon Motion, Inc. SM2263EN/SM2263XT (DRAM-less) NVMe SSD Controllers (rev 03) (prog-if 02 [NVM Express])
        LnkCap: Port #0, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <8us

```

```

# lspci -vv | grep -e ^0.: -e LnkCap:
00:00.0 Host bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2 (rev 02)
                LnkCap: Port #0, Speed 5GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:01.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 1 (rev 02) (prog-if 00 [Normal decode])
                LnkCap: Port #1, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:01.1 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 1 (rev 02) (prog-if 00 [Normal decode])
                LnkCap: Port #2, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
00:02.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 2 (rev 02) (prog-if 00 [Normal decode])
                LnkCap: Port #3, Speed 8GT/s, Width x16, ASPM L1, Exit Latency L1 <16us
00:03.0 PCI bridge: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 PCI Express Root Port 3 (rev 02) (prog-if 00 [Normal decode])
                LnkCap: Port #7, Speed 8GT/s, Width x16, ASPM L1, Exit Latency L1 <16us
00:05.0 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 Address Map, VTd_Misc, System Management (rev 02)
00:05.1 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 Hot Plug (rev 02)
00:05.2 System peripheral: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 RAS, Control Status and Global Errors (rev 02)
00:05.4 PIC: Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 I/O APIC (rev 02) (prog-if 20 [IO(X)-APIC])
00:11.0 Unassigned class [ff00]: Intel Corporation C610/X99 series chipset SPSR (rev 05)
00:11.4 SATA controller: Intel Corporation C610/X99 series chipset sSATA Controller [AHCI mode] (rev 05) (prog-if 01 [AHCI 1.0])
00:14.0 USB controller: Intel Corporation C610/X99 series chipset USB xHCI Host Controller (rev 05) (prog-if 30 [XHCI])
00:1a.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #2 (rev 05) (prog-if 20 [EHCI])
00:1b.0 Audio device: Intel Corporation C610/X99 series chipset HD Audio Controller (rev 05)
00:1c.0 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #1 (rev d5) (prog-if 00 [Normal decode])
                LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <512ns, L1 <4us
00:1c.2 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #3 (rev d5) (prog-if 00 [Normal decode])
                LnkCap: Port #3, Speed 5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <512ns, L1 <4us
00:1c.4 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #5 (rev d5) (prog-if 00 [Normal decode])
                LnkCap: Port #5, Speed 5GT/s, Width x4, ASPM L0s L1, Exit Latency L0s <512ns, L1 <4us
00:1d.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #1 (rev 05) (prog-if 20 [EHCI])
00:1f.0 ISA bridge: Intel Corporation C610/X99 series chipset LPC Controller (rev 05)
00:1f.2 SATA controller: Intel Corporation C610/X99 series chipset 6-Port SATA Controller [AHCI mode] (rev 05) (prog-if 01 [AHCI 1.0])
00:1f.3 SMBus: Intel Corporation C610/X99 series chipset SMBus Controller (rev 05)
01:00.0 Non-Volatile memory controller: Netac Technology Co.,Ltd PCIe 3 NVMe SSD (DRAM-less) (rev 01) (prog-if 02 [NVM Express])
                LnkCap: Port #0, Speed 8GT/s, Width x4, ASPM not supported
02:00.0 Non-Volatile memory controller: Netac Technology Co.,Ltd PCIe 3 NVMe SSD (DRAM-less) (rev 01) (prog-if 02 [NVM Express])
                LnkCap: Port #0, Speed 8GT/s, Width x4, ASPM not supported
03:00.0 SATA controller: ASMedia Technology Inc. ASM1166 Serial ATA Controller (rev 02) (prog-if 01 [AHCI 1.0])
                LnkCap: Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
04:00.0 SATA controller: ASMedia Technology Inc. ASM1166 Serial ATA Controller (rev 02) (prog-if 01 [AHCI 1.0])
                LnkCap: Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
05:00.0 IDE interface: ASMedia Technology Inc. ASM1061 Serial ATA Controller (rev 02) (prog-if 85 [PCI native mode-only controller, supports bus mastering])
                LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s unlimited, L1 <2us
06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8211/8411 PCI Express Gigabit Ethernet Controller (rev 06)
pcilib: sysfs_read_vpd: read failed: No such device
                LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s unlimited, L1 <64us
07:00.0 Non-Volatile memory controller: Silicon Motion, Inc. SM2263EN/SM2263XT (DRAM-less) NVMe SSD Controllers (rev 03) (prog-if 02 [NVM Express])
                LnkCap: Port #0, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <8us


    PCIBridge L#5 (busid=0000:00:1c.0 id=8086:8d10 class=0604(PCIBridge) link=0.50GB/s buses=0000:[05-05] PCIVendor="Intel Corporation" PCIDevice="C610/X99 series chipset PCI Express Root Port #1")
      PCI L#5 (busid=0000:05:00.0 id=1b21:0611 class=0101(IDE) link=0.50GB/s PCIVendor="ASMedia Technology Inc." PCIDevice="ASM1061 Serial ATA Controller")
        Block(Disk) L#18 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:128 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5UP0J) "sdy"
        Block(Disk) L#19 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:96 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5JN6J) "sdw"
        Block(Disk) L#20 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:64 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5N21J) "sdu"
        Block(Disk) L#21 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:144 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5TWTJ) "sdz"
        Block(Disk) L#22 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:112 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK5U0WJ) "sdx"
        Block(Disk) L#23 (Size=5860522584 SectorSize=512 LinuxDeviceID=65:80 Model=MB6000GEBTP Revision=HPG1 SerialNumber=1EK33AKJ) "sdv"

# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=81024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{y,w,u,z,x,v}
      sdy: 4.00GiB [42.9MiB/s] [42.9MiB/s]
      sdw: 4.00GiB [42.8MiB/s] [42.8MiB/s]
      sdu: 4.00GiB [44.7MiB/s] [44.7MiB/s]
      sdz: 4.00GiB [ 177MiB/s] [ 177MiB/s]
      sdx: 4.00GiB [43.1MiB/s] [43.1MiB/s]
      sdv: 4.00GiB [43.5MiB/s] [43.5MiB/s]

real    1m35.763s
user    0m0.881s
sys     0m38.989s


# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=51024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{y,w,u,x,v}
      sdy: 4.00GiB [47.5MiB/s] [47.5MiB/s]
      sdw: 4.00GiB [46.2MiB/s] [46.2MiB/s]
      sdu: 4.00GiB [46.7MiB/s] [46.7MiB/s]
      sdx: 4.00GiB [47.3MiB/s] [47.3MiB/s]
      sdv: 4.00GiB [46.2MiB/s] [46.2MiB/s]

real    1m28.918s
user    0m0.851s
sys     0m32.579s


# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=71024 status=none | pv -rabc -N {} -o /dev/null' ::: sd{y,w}
      sdy: 4.00GiB [ 122MiB/s] [ 122MiB/s]
      sdw: 4.00GiB [ 122MiB/s] [ 122MiB/s]

real    0m33.520s
user    0m0.398s
sys     0m12.686s


# time parallel --tty -j32 'dd if=/dev/{} bs=4M count=1024 skip=91024 status=none | pv -rabc -N {} -o /dev/null' ::: sdy
      sdy: 4.00GiB [ 177MiB/s] [ 177MiB/s]

real    0m23.278s
user    0m0.232s
sys     0m6.345s

```