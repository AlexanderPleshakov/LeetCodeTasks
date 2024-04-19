class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }

        let sortedDict = dict.sorted { $0.1 > $1.1 }
        var keys = [Int]()

        for index in 0..<k {
            keys.append(sortedDict[index].key)
        }

        return keys
    }
}
