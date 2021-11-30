# four
```sh
sudo dfx deploy --network ic --no-wallet four

sudo dfx deploy --network ic --no-wallet four2

dfx canister --network ic --no-wallet call four post '("msg from four")'

dfx canister --network ic --no-wallet call four follow '(principal "d24m2-dqaaa-aaaah-aa4zq-cai")'

dfx canister --network ic --no-wallet call four follow '(principal "hlszf-4yaaa-aaaag-qaasq-cai")'

dfx canister --network ic --no-wallet call four2 post '("msg from four2")'

dfx canister --network ic --no-wallet call four timeline
(vec { "msg from four2"; "msg from four" })
```