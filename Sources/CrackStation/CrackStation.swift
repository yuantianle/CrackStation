import Foundation

public class CrackStation: Decrypter {

    public required init(){}

    static func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "hash_data", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }

    enum MyError: Error {
        case runtimeError(String)
    }

    public func decrypt(shaHash: String) -> String? {
        //prefilter
        if (shaHash.count != 40) {
        // we are about to actually throw an error:
            //throw MyError.runtimeError("Illegal length.")
            return nil
        }
        else if (shaHash.rangeOfCharacter(from: CharacterSet.uppercaseLetters) != nil) {
        // we are about to actually throw an error:
            //throw MyError.runtimeError("include uppercase.")
            return nil
        }
        else if (shaHash.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) != nil) {
        // we are about to actually throw an error:
            //throw MyError.runtimeError("include illegal char.")
            return nil
        }
        else {
            let lookupTable = try? CrackStation.loadDictionaryFromDisk()
            return lookupTable?[shaHash]
        }
    }

}
