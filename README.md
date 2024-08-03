# Distributed Scheduler Installation & Execution

Based on: https://hackmd.io/RGkrr1bKSvimHDrXb-ulHQ

## Build Distributed Scheduler gNB and UE

### Clone and build the dependency for the **first time**
Change directory name
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
```
### Build gNB
```
./build_oai -w USRP --gNB
```
### Build UE1 and UE2
```
./build_oai -w USRP --nrUE
```

## Run Distributed Scheduler gNB and UE
### Run gNB
```
```

### Run UE1[^1]
```
```
### Run UE2[^1]
```
```
[^1]: UE1 must run before UE2.
