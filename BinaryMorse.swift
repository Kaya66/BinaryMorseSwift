import SwiftUI
import Foundation

@main
class binMorseClass {
    static func main() {
        let obj = logic()
        obj.startMenu()
    }
}


class logic {
    let AlphaBin: [String: String] = ["a":"10000010","b":"01110100","c":"01010100","d":"01100011",
                                      "e":"10000001","f":"11010100","g":"00100011","h":"11110100",
                                      "i":"11000010","j":"10000100","k":"01000011","l":"10110100",
                                      "m":"00000010","n":"01000010","o":"00000011","p":"10010100",
                                      "q":"00100100","r":"10100011","s":"11100011","t":"00000001",
                                      "u":"11000011","v":"11100100","w":"10000011","x":"01100100",
                                      "y":"01000100","z":"00110100","0":"00000101","1":"10000101",
                                      "2":"11000101","3":"11100101","4":"11110101","5":"11111101",
                                      "6":"01111101","7":"00111101","8":"00011101","9":"00001101",
                                      " ":"00000111"]
    
    func startMenu() {
        print("Please select (E)ncode, (D)ecode, or (Q)uit")
        guard let response = readLine() else { return }
        
        if response.lowercased() == "e" {
            print("Data to Encode: ")
            guard let rawData = readLine() else { exit(0) }
            print ("Encoded Data: \(encode(rawData: rawData))" )
            
        } else if response.lowercased() == "d" {
            print("Data to Decode: ")
            guard let rawData = readLine() else { exit(0) }
            print ("Decoded Data: \(decode(rawData: rawData))" )
            
        } else if response.lowercased() == "q" {
            print("Exiting!")
            exit(0)
            
        } else {
            print("Incorrect value given, exiting!")
            exit(0)
        }
        startMenu()
    }
    
    //take in binary, return string
    func findKeyFromValue(val: String) -> String {
        print("Input to fkfv: \(val)")
        
        //iterate over binary values
        var result: String = ""
        for x in AlphaBin {
            //if binary value in AlphaBin == binary value supplied, print the associated Key value.
            if (x.value == val){
                result = result + x.key
            }
        }
        return result
    }
    
    func encode (rawData: String) -> String {
        var retString: String = ""
        for x in rawData {
            retString = retString + AlphaBin[String(x)]! + " "
        }
        return retString
    }
    
    func decode (rawData: String) -> String {
        var retString: String = ""
        let tempArray = rawData.components(separatedBy: " ")
            .filter { $0.count == 8 }
        
        for x in tempArray {
            retString = retString + findKeyFromValue(val: x)
        }
        return retString
    }
}
