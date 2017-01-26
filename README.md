# Demo backend for National Bank of Kazakhstan
This is a showcase for [modata](https://github.com/yury-dymov/modata) library.

Modata was developed to make demo applications fast and easy.  Just add `has_modata` to the model and everything described below works out-of-the-box.

Admin console - [https://kzbank.herokuapp.com/admin](https://kzbank.herokuapp.com/admin), admin@example.com:password

# Features

* Modata uses RoR Models to generate source code for iOS - [https://kzbank.herokuapp.com/modata/xcode](https://kzbank.herokuapp.com/modata/xcode)
* Modata uses RoR Models to generate source code for Android - [https://kzbank.herokuapp.com/modata/xcode](https://kzbank.herokuapp.com/modata/android)
* Modata provides web-services to fetch the data - [https://kzbank.herokuapp.com/modata/data/Commodity](https://kzbank.herokuapp.com/modata/data/Commodity)
* Delta synchronization is available out-of-the-box - [https://kzbank.herokuapp.com/modata/data/Commodity?timestamp=1485433411973](https://kzbank.herokuapp.com/modata/data/Commodity?timestamp=1485433411973)
* On the client side there is a SyncEngine class, which takes care of data synchronization and storage  
* Field filtering / Computed fields / Protection with authentication 

# Development Process

1. Generate your models
2. Add `active_admin` and `modata` gems
3. Seed your data
4. You are up and running within minutes!

# Known issues
To ease the Heroku deployment secret keys and passwords were hardcoded as it is a demo with random data.

# License
MIT (c) Yury Dymov
