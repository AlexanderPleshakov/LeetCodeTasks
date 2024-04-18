class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [[Int]: [String]]()
        for str in strs {
            var counts = Array(repeating: 0, count: 26)
            for char in str {
                let index = Int(char.asciiValue! - 97)
                counts[index] += 1
            }
            dict[counts, default: []].append(str)

        }

        return Array(dict.values)
    }
}
