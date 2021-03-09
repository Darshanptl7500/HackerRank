

// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem

func jumpingOnClouds(c: [Int]) -> Int {
    let length = c.count
    var count = -1
    var interval = 0
    for index in sequence(first: 0, next: { current in
        let next = interval
        return next < length ? next : nil
    }) {
        if index + 2 < length && c[index + 2] == 0 {
            interval += 1
        }
        interval += 1
        count += 1
    }
    return count
}

print(jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0]))
// 4

