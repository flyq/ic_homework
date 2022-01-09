# five

```sh
dfx canister --no-wallet --network ic call five set_name "five"

dfx canister --no-wallet --network ic call five1 set_name "five1"

dfx canister --no-wallet --network ic call five2 set_name "five2"

dfx canister --no-wallet --network ic call five3 set_name "five3"

dfx canister --no-wallet --network ic call five follow "(principal \"$(dfx canister --network ic id five1)\")"

dfx canister --no-wallet --network ic call five follow "(principal \"$(dfx canister --network ic id five2)\")"

dfx canister --no-wallet --network ic call five follow "(principal \"$(dfx canister --network ic id five3)\")"


dfx canister --no-wallet --network ic call five post '("123456", "Hello, Here is five, this is the first blog I post, have fun, ...")'


dfx canister --no-wallet --network ic call five post '("123456", "Hello, World!")'

dfx canister --no-wallet --network ic call five1 post '("123456", "Hello, Here is five1, this is the first blog I post, have fun, ...")'

dfx canister --no-wallet --network ic call five2 post '("123456", "Hello, Here is five2, this is the first blog I post, have fun, ...")'

dfx canister --no-wallet --network ic call five3 post '("123456", "Hello, Here is five3, this is the first blog I post, have fun, ...")'


dfx canister --no-wallet --network ic call five1 post '("123456", "Hello, Here is five1, this is the second blog I post, have fun, good night")'

dfx canister --no-wallet --network ic call five post '("123456", "Hello, Here is five, 1234324234234")'


dfx canister --no-wallet --network ic call five3 post '("123456", "111111111111")'

```