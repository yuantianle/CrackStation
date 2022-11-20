import Foundation

public class CrackStation: Decrypter {

    private let HashTable: [String : String]

    public required init(){
        self.HashTable = CrackStation.loadDictionaryFromDisk()
    }

    static func loadDictionaryFromDisk() -> [String : String] {
        do{
            guard let path = Bundle.module.url(forResource: "hash_data3", withExtension: "json") else { return [:] }

            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data)

            if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
                return lookupTable
            } else {
                return [:]
            }
        }
        catch{
            return [:]
        }
    }

    //Time complexity: O(1)
    public func decrypt(shaHash: String) -> String? {
        //prefilter
        if (shaHash.count != 40 && shaHash.count != 64) {
            return nil
        }
        else if (shaHash.rangeOfCharacter(from: CharacterSet.uppercaseLetters) != nil) {
            return nil
        }
        else if (shaHash.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) != nil) {
            return nil
        }
        else {
            return HashTable[shaHash]
        }
    }

}
