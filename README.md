# Distributed Scheduler Installation & Execution

Based on: https://hackmd.io/RGkrr1bKSvimHDrXb-ulHQ

## Build Distributed Scheduler gNB and UE

### Clone and build the dependency for the **first time**
Change directory name.
```
mv Distributed_scheduler ./openairinterface5g
```
### Clone Distributed Scheduler project 
gNB .32
```
git clone https://github.com/or1456/Distributed_scheduler.git -b gNB
```
or

UE1 .30
```
git clone https://github.com/or1456/Distributed_scheduler.git -b UE1
```
or

UE2 .31
```
git clone https://github.com/or1456/Distributed_scheduler.git -b UE2
```

### Build ONLY FOR the FIRST time
```
source oaienv
cd cmake_targets
export BUILD_UHD_FROM_SOURCE=Ture
export UHD_VERSION=4.3.0.0-rc1 #(optional UHD_VERSION=4.4.0.0)
./build_oai -I
cd ran_build/build
```
### Build gNB
```
../../build_oai -w USRP --gNB
```
### Build UE1 and UE2
```
../../build_oai -w USRP --nrUE
```

## Run Distributed Scheduler gNB and UE
### Run gNB
```
sudo ./nr-softmodem -O ~/openairinterface5g/targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf --sa -E --gNBs.[0].min_rxtxtime 6 -continuous-tx
```
### Run UE1[^1]
```
sudo ./nr-uesoftmodem -r 106 --numerology 1 --band 78 -C 3619200000 --ue-fo-compensation --sa -E
```
### Run UE2[^1]
```
sudo ./nr-uesoftmodem -r 106 --numerology 1 --band 78 -C 3619200000 --ue-fo-compensation --sa -E
```
[^1]: UE1 must run before UE2.

## Possible problems
1. No USRP device
  - Some processes use all of CPU resources, so kill these processes.
  - Reboot.
  - Replug the USRP B210.

2. The gNB terminal prints a lot of "LLLLLLLLLLLLLLLLLL"
  - Some processes use all of CPU resources, so kill these processes.

3. The DSI MCS is sometimes 6 and sometimes 9.
  - Change the position of the USRP B210.

## Modify
Search for `mwnl or`, and you can see what I have modified.
