# blue-app-eth dockerized builder

1) remember, all apps depend on the latest `ethereum` app.  remove all apps form the ledger, follow the next steps to install the latest `ethereum` app, then follow them again to install the app of your choice

2) be sure to have python3 and pip3 installed

3) type `make && make COIN` (replace coin with `ethereum`, or `pirl`, etc)

4) hang out

5) build output binaries will be written to the `binaries/COIN/` directory

6) ledger will ask you to unlock.  it will warn you the app isn't signed.  it will request authorization to install the new app
