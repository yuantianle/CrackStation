public protocol Decrypter {
    init() 

    func decrypt(shaHash: String) throws -> String? 
}