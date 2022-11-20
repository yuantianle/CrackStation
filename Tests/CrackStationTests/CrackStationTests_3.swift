import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    // single test
    func testExample_c() throws {
        XCTAssertEqual("c", CrackStation().decrypt(shaHash: "84a516841ba77a5b4648de2cd0dfcb30ea46dbb4"))
    }
    func testExample_c256() throws {
        XCTAssertEqual("c", CrackStation().decrypt(shaHash: "2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6"))
    }
    func testExample_K() throws {
        XCTAssertEqual("K", CrackStation().decrypt(shaHash: "a7ee38bb7be4fc44198cb2685d9601dcf2b9f569"))
    }
    func testExample_K256() throws {
        XCTAssertEqual("K", CrackStation().decrypt(shaHash: "86be9a55762d316a3026c2836d044f5fc76e34da10e1b45feee5f18be7edb177"))
    }
    func testExample_7() throws {
        XCTAssertEqual("7", CrackStation().decrypt(shaHash: "902ba3cda1883801594b6e1b452790cc53948fda"))
    }
    func testExample_7256() throws {
        XCTAssertEqual("7", CrackStation().decrypt(shaHash: "7902699be42c8a8e46fbbb4501726517e86b22c56a189f7625a6da49081b2451"))
    }
    func testExample_e_a() throws {
        XCTAssertEqual("a", CrackStation().decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"))
    }
    func testExample_e_a256() throws {
        XCTAssertEqual("a", CrackStation().decrypt(shaHash: "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb"))
    }
    func testExample_e_z() throws {
        XCTAssertEqual("z", CrackStation().decrypt(shaHash: "395df8f7c51f007019cb30201c49e884b46b92fa"))
    }
    func testExample_e_z256() throws {
        XCTAssertEqual("z", CrackStation().decrypt(shaHash: "594e519ae499312b29433b7dd8a97ff068defcba9755b6d5d00e84c524d67b06"))
    }
    func testExample_e_A() throws {
        XCTAssertEqual("A", CrackStation().decrypt(shaHash: "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b"))
    }
    func testExample_e_A256() throws {
        XCTAssertEqual("A", CrackStation().decrypt(shaHash: "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd"))
    }
    func testExample_e_Z() throws {
        XCTAssertEqual("Z", CrackStation().decrypt(shaHash: "909f99a779adb66a76fc53ab56c7dd1caf35d0fd"))
    }
    func testExample_e_Z256() throws {
        XCTAssertEqual("Z", CrackStation().decrypt(shaHash: "bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83"))
    }
    func testExample_e_0() throws {
        XCTAssertEqual("0", CrackStation().decrypt(shaHash: "b6589fc6ab0dc82cf12099d1c2d40ab994e8410c"))
    }
    func testExample_e_0256() throws {
        XCTAssertEqual("0", CrackStation().decrypt(shaHash: "5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9"))
    }
    func testExample_e_9() throws {
        XCTAssertEqual("9", CrackStation().decrypt(shaHash: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897"))
    }
    func testExample_e_9256() throws {
        XCTAssertEqual("9", CrackStation().decrypt(shaHash: "19581e27de7ced00ff1ce50b2047e7a567c76b1cbaebabe5ef03f7c3017bb5b7"))
    }
    func testExample_e_wen() throws {
        XCTAssertEqual("?", CrackStation().decrypt(shaHash: "5bab61eb53176449e25c2c82f172b82cb13ffb9d"))
    }
    func testExample_e_wen256() throws {
        XCTAssertEqual("?", CrackStation().decrypt(shaHash: "8a8de823d5ed3e12746a62ef169bcf372be0ca44f0a1236abc35df05d96928e1"))
    }
    func testExample_e_gan() throws {
        XCTAssertEqual("!", CrackStation().decrypt(shaHash: "0ab8318acaf6e678dd02e2b5c343ed41111b393d"))
    }
    func testExample_e_gan256() throws {
        XCTAssertEqual("!", CrackStation().decrypt(shaHash: "bb7208bc9b5d7c04f1236a82a0093a5e33f40423d5ba8d4266f7092c3ba43b62"))
    }

    // legal input
    func testExample_c1() throws {
        XCTAssertEqual("c1", CrackStation().decrypt(shaHash: "2f22765d04931a078909145ca628d2264c852d7d"))
    }
    func testExample_9K() throws {
        XCTAssertEqual("9K", CrackStation().decrypt(shaHash: "c237c2a7178bc1e11730f27b87eee25a1f96eb01"))
    }
    func testExample_00() throws {
        XCTAssertEqual("00", CrackStation().decrypt(shaHash: "fb96549631c835eb239cd614cc6b5cb7d295121a"))
    }
    func testExample_c1gan() throws {
        XCTAssertEqual("c1!", CrackStation().decrypt(shaHash: "cbd9a139798de84e5180487b961d50f6eff10fe1"))
    }
    func testExample_wen9K() throws {
        XCTAssertEqual("?9K", CrackStation().decrypt(shaHash: "7dddde29ca49911eb209d5e1b50a5ae9017d9a9f"))
    }
    func testExample_A4z() throws {
        XCTAssertEqual("A4z", CrackStation().decrypt(shaHash: "1a053c13b564b05ec34e91451f1dc62a9d35b965"))
    }
    //256
    func testExample_c1256() throws {
        XCTAssertEqual("c1", CrackStation().decrypt(shaHash: "d0f631ca1ddba8db3bcfcb9e057cdc98d0379f1bee00e75a545147a27dadd982"))
    }
    func testExample_9K256() throws {
        XCTAssertEqual("9K", CrackStation().decrypt(shaHash: "143424d04ea8d7c18f826a8efaa34ffa693e92dd95aa914227f5583aae88390a"))
    }
    func testExample_00256() throws {
        XCTAssertEqual("00", CrackStation().decrypt(shaHash: "f1534392279bddbf9d43dde8701cb5be14b82f76ec6607bf8d6ad557f60f304e"))
    }
    func testExample_c1gan256() throws {
        XCTAssertEqual("c1!", CrackStation().decrypt(shaHash: "32d3ed1f1f3c9f7bb47ecda897985533aa3ddce058c7f8e6de5edca97b4686ae"))
    }
    func testExample_wen9K256() throws {
        XCTAssertEqual("?9K", CrackStation().decrypt(shaHash: "443e072ad8bbb793a53e682bd42c8215a78791ee1fcfadca7796fa264de0c625"))
    }
    func testExample_A4z256() throws {
        XCTAssertEqual("A4z", CrackStation().decrypt(shaHash: "6f947de6762878f663991404188d981b6a986026b1277bacee93cb231f5e1c79"))
    }
    // illegal input
    func testExample_i_3349() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "b760d7d73bbf50a701dc577dd2e4820bb97040e6"))
    }
    func testExample_i_lL1wen() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "58b91e9d0182b0a4739b43f2992ef71770a0a59e"))
    }
    func testExample_i_neg100() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "809f5a9e36db955ce420674602070c806e2ab5e7"))
    }
    func testExample_i_3349_256() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "d4677f835c202d9267e009f5add0e43f2e3e599c7ea24987eda1afbeaa88dd93"))
    }
    func testExample_i_lL1wen_256() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "82bba800b136f5a38b0778fb894ef8a54d1d39b126ce6ee23826c7fea85d0bfc"))
    }
    func testExample_i_neg100_256() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "b96b3036632771349308fbbe5d7a3f3f762c9e8f3eedd5785b13ff322e05fd9d"))
    }
    func testExample_i_null() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: ""))
    }
    func testExample_i_other1() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "!"))
    }
    func testExample_i_other2() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "-902ba3cda1883801594b6e1b452790cc53948fd"))
    }
    func testExample_i_other3() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "?"))
    }
    func testExample_i_other4() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "902ba3cda1883801594b6e1b452790cc53948fdA"))
    }
    // edge case
    func testExample_e_aaa() throws {
        XCTAssertEqual("aaa", CrackStation().decrypt(shaHash: "7e240de74fb1ed08fa08d38063f6a6a91462a815"))
    }
    func testExample_e_wennn() throws {
        XCTAssertEqual("???", CrackStation().decrypt(shaHash: "2d86c2a659e364e9abba49ea6ffcd53dd5559f05"))
    }
    func testExample_e_gannn() throws {
        XCTAssertEqual("!!!", CrackStation().decrypt(shaHash: "9a7b006d203b362c8cef6da001685678fc1d463a"))
    }
    func testExample_e_000() throws {
        XCTAssertEqual("000", CrackStation().decrypt(shaHash: "8aefb06c426e07a0a671a1e2488b4858d694a730"))
    }
        
    func testExample_e_aaa256() throws {
        XCTAssertEqual("aaa", CrackStation().decrypt(shaHash: "9834876dcfb05cb167a5c24953eba58c4ac89b1adf57f28f2f9d09af107ee8f0"))
    }
    func testExample_e_wennn256() throws {
        XCTAssertEqual("???", CrackStation().decrypt(shaHash: "a03b221c6c6eae7122ca51695d456d5222e524889136394944b2f9763b483615"))
    }
    func testExample_e_gannn256() throws {
        XCTAssertEqual("!!!", CrackStation().decrypt(shaHash: "e84c538e7fe250730ef62de220c40dfa808d3008c0cdb437181564b88b8714b8"))
    }
    func testExample_e_000256() throws {
        XCTAssertEqual("000", CrackStation().decrypt(shaHash: "2ac9a6746aca543af8dff39894cfe8173afba21eb01c6fae33d52947222855ef"))
    }

    
}

