# blue-app-eth dockerized builder

* All `blue-app-eth` apps depend on the latest `ethereum` app that this build system produces.

* Before you begin, Remove *all* apps from the ledger.  Don't worry - your wallet IDs will remain the same when you reinstall your apps later on.

* Be sure to have docker, python3 and pip3 installed.

* If you use this build system to build and install _any_ ethereum-based apps to your ledger, then _any other_ ethereum-based apps must also be built and installed using this system.  Do not install them via ledger manager - they all must be built and linked against the same version of the `ethereum` app.


Follow the next steps to build and install the `ethereum` app from source.  Follow them again to build and install the `blue-app-eth` app of your choice:

1) type `make && make COIN` (replace COIN with `ethereum`, `pirl`, `akroma`, `callisto`, `ubiq`, `expanse`, etc)

2) hang out

3) build output binaries will be written to the `binaries/COIN/` directory

4) ledger will ask you to unlock.  it will warn you the app isn't signed.  it will request authorization to install the new app


##### Now accepting donations:
```
BTC:   331mv5hFaHS2XceyW6yBeWUdhA8rPf5xPH
ETH:   0x645Ef3204b93DB965aA4cB23eB730b06f85D0EAb
ETC:   0xC43F7bE80b94fba01cF1BdE96f80B7716A1F5aF8

AKA:   0x1a81a763c422E6457617Ce465C2C1cD34242c68C
CLO:   0xfd618f2475199229EA2c91B236E1d4Ff852372e0
EGEM:  0x526511e177E2fD05bAEBcE43282651c7DB5078aD
ETHO:  0x087c83e882822E96AD09eF2A15391C88E241AdA8
EXP:   0x36833FC0f1f11365d1a65333F4Ad5eb378254963
MUSIC: 0x3B9410B4380Cc1B7E76bD8670dbB05C65660D6aa
PIRL:  0x0Ba74954A112D0e753805cbf3318FECea4F5A999
UBQ:   0x71821fAf020408547C08E4a1A616EB8970C56D79
```
