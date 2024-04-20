class Solution {
    func encode(_ strs: [String]) -> String {
        var encodedString = ""
        for (i, str) in strs.enumerated() {
            encodedString.append(str)
            if i != strs.count - 1 {
                encodedString.append(" ")
            }
        }
        
        return encodedString
    }
    
    func decode(_ str: String) -> [String] {
        var s = ""
        var result = [String]()
        for (i, char) in str.enumerated() {
            if char == " " {
                result.append(s)
                s = ""
                continue
            }
            s.append(char)
            
            if i == str.count - 1 {
                result.append(s)
            }
        }
        
        return result
    }
}

let coder = Solution()
let string = ["leet","code","love","you"]

let encoded = coder.encode(string)
let decoded = coder.decode(encoded)
print(encoded)
print(decoded)

