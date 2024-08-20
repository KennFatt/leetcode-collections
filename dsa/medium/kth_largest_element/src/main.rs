fn main() {
    // 215. Kth Largest Element in an array
    let nums = vec![3, 2, 1, 5, 6, 4];
    let result = find_kth_largest(nums, 2);
    assert!(result == 5);

    let nums = vec![3, 2, 3, 1, 2, 4, 5, 5, 6];
    let result = find_kth_largest(nums, 4);
    assert!(result == 4);
}

fn find_kth_largest(nums: Vec<i32>, k: i32) -> i32 {
    // TODO: dear myself, please do not cheat. Please try again later without sorting...
    let mut sorted = nums.clone();
    sorted.sort();

    return *sorted.get(sorted.len() - (k as usize)).unwrap();
}
