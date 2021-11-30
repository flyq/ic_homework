import Buffer "mo:base/Buffer";
import Principal "mo:base/Principal";

actor {
    type SubActor = actor {
        posts : shared query () -> async [Text];
    };
    private var subs = Buffer.Buffer<Principal>(0);
    private var msgs = Buffer.Buffer<Text>(0);
    // 通过 principal id 关注一个 canister
    public shared func follow(p: Principal) : async () {
        subs.add(p);
    };

    // 返回关注的 canister 列表
    public query func followers() : async [Principal] {
        subs.toArray()
    };
    // 发布一个消息
    public shared func post(t: Text) : async () {
        msgs.add(t);
    };
    // 所有发布过的消息列表
    public query func posts() :  async [Text] {
        msgs.toArray()
    };
    // 所有关注列表中 canister 发布的所有消息列表
    public shared func timeline() : async [Text] {
        let res = Buffer.Buffer<Text>(0);
        for (i in subs.vals()) {
            let sub: SubActor = actor(Principal.toText(i));
            let temp = await sub.posts();
            for (msg in temp.vals()) {
                res.add(msg);
            };
        };
        res.toArray()
    };
};