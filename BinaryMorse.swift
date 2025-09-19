import SwiftUI
import Foundation

class binMorseClass {
    let AlphaBin: [String: String] = ["a":"10000010","b":"01110100","c":"01010100","d":"01100011","e":"10000001","f":"11010100","g":"00100011","h":"11110100","i":"11000010","j":"10000100","k":"01000011","l":"10110100","m":"00000010","n":"01000010","o":"00000011","p":"00100100","r":"10100011","s":"11100011","t":"00000001","u":"11000011","v":"11100100","w":"10000011","x":"01100100","y":"01000100","z":"00110100","0":"00000101","1":"10000101","2":"11000101","3":"11100101","4":"11110101","5":"11111101","6":"01111101","7":"00111101","8":"00011101","9":"00001101"," ":"00000111"]
    
    func mainMenu(){
        print("Please select (E)ncode or (D)ecode: ")
        let response = readLine()
        if (response?.lowercased() == "e") {
            
        } else if (response?.lowercased() == "d") {
            
        }
        print("Input your text to encode/decode: ")
        let rawData = readLine()
        print(response as Any)
        print(rawData as Any)
    }
    
    
    
    //take in binary, return string
    func findKeyFromValue(val:String) -> String {
        //iterate over binary values
        var result:String = ""
        for x in AlphaBin {
            //if binary value in AlphaBin == binary value supplied, print the associated Key value.
            if (x.value == val){
                result = x.key
            }
        }
        return result
    }
}
