fn main() {
    // 27 - remove element
    // case: 1
    // let mut nums = vec![3, 2, 2, 3];
    // let val = 3;

    // case: 2
    let mut nums = vec![0, 1, 2, 2, 3, 0, 4, 2];
    let val = 2;

    let k = remove_element(&mut nums, val);

    println!("the k is {}", k);
    println!("{:?}", nums);
}

fn remove_element(nums: &mut Vec<i32>, val: i32) -> i32 {
    nums.retain(|&n| n != val);
    let retained_len = nums.len();

    retained_len as i32
}
