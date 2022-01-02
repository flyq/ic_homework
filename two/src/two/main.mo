import Int "mo:base/Int";
import Array "mo:base/Array";

actor {
    let abs = Int.abs;

    func _quicksort(arr: [var Int], start: Int, end: Int) {
        if (start < end) {
            let p = partition(arr, start, end);
            _quicksort(arr, start, p - 1);
            _quicksort(arr, p + 1, end);
        };
    };

    func partition(slice: [var Int], start: Int, end: Int): Int {
        let pivot = abs(end);
        var store_index = start - 1;
        var last_index = end;

        label l loop {
            store_index += 1;
            while (slice[abs(store_index)] < slice[pivot]) {
                store_index += 1;
            };
            last_index -= 1;

            while ((last_index >= 0) and (slice[abs(last_index)] > slice[pivot])) {
                last_index -= 1;
            };

            if (store_index >= last_index) {
                break l;
            } else {
                swap(slice, abs(store_index), abs(last_index));
            };
        };
        swap(slice, abs(store_index), pivot);
        return store_index;
    };

    func swap(arr: [var Int], i: Nat, j: Nat) {
        let temp = arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
    };

    public func qsort(arr: [Int]): async [Int] {
        let b = Array.thaw<Int>(arr);
        _quicksort(b, 0, b.size()-1);
        Array.freeze(b)
    };

};

