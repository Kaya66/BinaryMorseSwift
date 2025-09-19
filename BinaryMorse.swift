//
//  main.swift
//  BinaryMorseSwift
//
//  Created by Elixir on 9/18/25.
//

import Foundation

@main
struct termScript {
    static func main(){
        print("Hello World!")
        let AlphaBin: [String: Int] = ["a":10000010,"b":01110100,"c":01010100,"d":01100011,"e":10000001,"f":11010100,"g":00100011,"h":11110100,"i":11000010,"j":10000100,"k":01000011,"l":10110100,"m":00000010,"n":01000010,"o":00000011,"p":00100100,"r":10100011,"s":11100011,"t":00000001,"u":11000011,"v":11100100,"w":10000011,"x":01100100,"y":01000100,"z":00110100,"0":00000101,"1":10000101,"2":11000101,"3":11100101,"4":11110101,"5":11111101,"6":01111101,"7":00111101,"8":00011101,"9":00001101," ":00000111,]
        print(AlphaBin)
        
        func mainMenu(){
            
            print("Please select (E)ncode or (D)ecode: ")
            let response = readLine()
            print("Input your text to encode/decode: ")
            let rawData = readLine()
            print(response as Any)
            print(rawData as Any)
        }
        
        
        
        mainMenu()
    }
}
