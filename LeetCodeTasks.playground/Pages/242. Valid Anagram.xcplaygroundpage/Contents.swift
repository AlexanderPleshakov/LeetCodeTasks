class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character: Int]()
        var dict2 = [Character: Int]()

        for char in s {
            dict[char, default: 0] += 1
        }
        
        for char in t {
            dict2[char, default: 0] += 1
        }
        
        return dict == dict2
    }
}

class Solution2 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        let sCharCount = getCharacterCount(s)
        let tCharCount = getCharacterCount(t)

        return sCharCount == tCharCount
    }

    private func getCharacterCount(_ str: String) -> [Int] {
        var charCount = [Int](repeating: 0, count: 26)
        let aAsciiValue = Character("a").asciiValue ?? 0

        for char in str.utf8 {
            charCount[Int(char - aAsciiValue)] += 1
        }

        return charCount
    }
}
