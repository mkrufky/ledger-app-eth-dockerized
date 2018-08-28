# ledger-app-eth dockerized builder

* All `ledger-app-eth` apps depend on the latest `ethereum` app that this build system produces.

* Before you begin, Remove *all* apps from the ledger.  You might have to use the ledger manager to remove the apps.  Don't worry - your wallet IDs will remain the same when you reinstall your apps later on.

* Be sure to have docker, python3 and pip3 installed.

* If you use this build system to build and install _any_ ethereum-based apps to your ledger, then _any other_ ethereum-based apps must also be built and installed using this system.  Do not install them via ledger manager - they _all_ must be built and linked against the same version of the `ethereum` app.


Follow the next steps to build and install the `ethereum` app from source.  Follow them again to build and install the `ledger-app-eth` app of your choice:

1) type `make && make COIN` (replace COIN with `ethereum`, `pirl`, `akroma`, `callisto`, `ubiq`, `expanse`, etc)

2) hang out

3) build output binaries will be written to the `binaries/COIN/` directory

4) ledger will ask you to unlock.  it will warn you the app isn't signed.  it will request authorization to install the new app


##### Now accepting donations:
<table><tr><td>
<table>
<tr><td align="center"><sub>Network</sub></td><td><sub>Donation Wallet ID</sub></tr>
<tr><td align="center"><sub><a href="https://www.blockchain.com/btc/address/331mv5hFaHS2XceyW6yBeWUdhA8rPf5xPH">BTC</a></sub></td><td><sub><tt>331mv5hFaHS2XceyW6yBeWUdhA8rPf5xPH</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://etherscan.io/address/0x645Ef3204b93DB965aA4cB23eB730b06f85D0EAb">ETH</a></sub></td><td><sub><tt>0x645Ef3204b93DB965aA4cB23eB730b06f85D0EAb</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://akroma.io/en/explorer/address/0x1a81a763c422E6457617Ce465C2C1cD34242c68C">AKA</a></sub></td><td><sub><tt>0x1a81a763c422E6457617Ce465C2C1cD34242c68C</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://scan.atheios.com/addr/0x1ebd36a9002f7345971ba5c22fb21674e5c0a7cc">ATH</a></sub></td><td><sub><tt>0x1ebd36A9002f7345971ba5c22Fb21674E5c0a7cC</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://cloexplorer.org/addr/0xfd618f2475199229EA2c91B236E1d4Ff852372e0">CLO</a></sub></td><td><sub><tt>0xfd618f2475199229EA2c91B236E1d4Ff852372e0</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://explorer.egem.io/addr/0x526511e177E2fD05bAEBcE43282651c7DB5078aD">EGEM</a></sub></td><td><sub><tt>0x526511e177E2fD05bAEBcE43282651c7DB5078aD</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://explorer.eos-classic.io/addr/0x85c1a7832d6d2fe90045e554ec22fc3214d97f8b">EOSC</a></sub></td><td><sub><tt>0x85C1A7832D6D2fE90045e554ec22fC3214d97f8b</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://gastracker.io/addr/0xc43f7be80b94fba01cf1bde96f80b7716a1f5af8">ETC</a></sub></td><td><sub><tt>0xC43F7bE80b94fba01cF1BdE96f80B7716A1F5aF8</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://explorer.ether1.org/addr/0x087c83e882822E96AD09eF2A15391C88E241AdA8">ETHO</a></sub></td><td><sub><tt>0x087c83e882822E96AD09eF2A15391C88E241AdA8</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://www.gander.tech/address/0x36833FC0f1f11365d1a65333F4Ad5eb378254963">EXP</a></sub></td><td><sub><tt>0x36833FC0f1f11365d1a65333F4Ad5eb378254963</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://explorer.gochain.io/addr/0xa6cece249abbc52f747afb630827ec8996f4a686">GO</a></sub></td><td><sub><tt>0xa6cece249abbc52f747afb630827ec8996f4a686</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://explorer.musicoin.org/account/0x3B9410B4380Cc1B7E76bD8670dbB05C65660D6aa">MUSIC</a></sub></td><td><sub><tt>0x3B9410B4380Cc1B7E76bD8670dbB05C65660D6aa</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://poseidon.pirl.io/explorer/address/0x0Ba74954A112D0e753805cbf3318FECea4F5A999">PIRL</a></sub></td><td><sub><tt>0x0Ba74954A112D0e753805cbf3318FECea4F5A999</tt></sub></td></tr>
<tr><td align="center"><sub><a href="https://ubiqscan.io/en/address/0x71821fAf020408547C08E4a1A616EB8970C56D79">UBIQ</a></sub></td><td><sub><tt>0x71821fAf020408547C08E4a1A616EB8970C56D79</tt></sub></td></tr>
</table>
</td><td width=300 valign="bottom">
<sub>If you should decide to pick up a <a href="https://www.ledger.com/products/ledger-nano-s?r=eda7c183c5fc&tracker=LEDGER_APP_ETH_DOCKERIZED">Ledger Nano S</a> from <a href="https://www.ledger.com?r=eda7c183c5fc">Ledger</a>, please consider using my affiliate link:</sub>

<a href="https://www.ledger.com?r=eda7c183c5fc"><img width=300 height=250 alt="Ledger Nano S - The secure hardware wallet" src="https://www.ledgerwallet.com/images/promo/nano-s/ledger_nano-s_3-0-0x2-5-0.jpg"></a>

</td></tr></table>
