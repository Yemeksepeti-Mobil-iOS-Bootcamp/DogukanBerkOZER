import UIKit

// 1st Question
var resultString = "aaba kouq bux ", myString = resultString, counter = 0

print(removeCharacters(myString: myString, count: 2))

func removeCharacters(myString: String, count: Int) -> String {
    for char1 in myString{
        counter = 0
        for char2 in myString{
            if char1 == char2 {
                counter += 1
            }
        }
        if(counter >= count && char1 != " "){
            resultString = resultString.replacingOccurrences(of: String(char1), with: "")
        }
    }
    return resultString
}


// 2nd Question
var string = "merhaba nasılsınız ? iyiyim siz nasılsınız ? ben de iyiyim".replacingOccurrences(of: " ? ", with: " ").lowercased(), wordCounter:[String: Int] = [:]

for word in string.split(separator: " ") {
    wordCounter["\(word)", default:0] += 1
}

print(wordCounter)

