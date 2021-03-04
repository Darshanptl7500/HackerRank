import Foundation

// https://www.hackerrank.com/challenges/repeated-string/problem

func repeatedString(s: String, n: Int) -> Int {
  let strLength = s.count
  var q = 0, r = 0
  q = n / strLength
  r = n % strLength
  let partialStrLength = r == 0 ? 0 : r
  let aCount = (q * getLetterCount(s: s, length: strLength)) +
    getLetterCount(s: s, length: partialStrLength)
  return aCount
}

func getLetterCount (s: String, length: Int) -> Int {
    let index = s.index(s.startIndex, offsetBy: length)
    let substring = s[..<index]
    let count = substring.filter { $0 == "a" }.count
    return count
}

let count = repeatedString(s: "abc", n: 10)
print(count)

