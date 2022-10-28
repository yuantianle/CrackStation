import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    // single test
    func testExample_c() throws {
        XCTAssertEqual("c", CrackStation().decrypt(shaHash: "84a516841ba77a5b4648de2cd0dfcb30ea46dbb4"))
    }
    func testExample_K() throws {
        XCTAssertEqual("K", CrackStation().decrypt(shaHash: "a7ee38bb7be4fc44198cb2685d9601dcf2b9f569"))
    }
    func testExample_7() throws {
        XCTAssertEqual("7", CrackStation().decrypt(shaHash: "902ba3cda1883801594b6e1b452790cc53948fda"))
    }
    func testExample_e_a() throws {
        XCTAssertEqual("a", CrackStation().decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"))
    }
    func testExample_e_z() throws {
        XCTAssertEqual("z", CrackStation().decrypt(shaHash: "395df8f7c51f007019cb30201c49e884b46b92fa"))
    }
    func testExample_e_A() throws {
        XCTAssertEqual("A", CrackStation().decrypt(shaHash: "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b"))
    }
    func testExample_e_Z() throws {
        XCTAssertEqual("Z", CrackStation().decrypt(shaHash: "909f99a779adb66a76fc53ab56c7dd1caf35d0fd"))
    }
    func testExample_e_0() throws {
        XCTAssertEqual("0", CrackStation().decrypt(shaHash: "b6589fc6ab0dc82cf12099d1c2d40ab994e8410c"))
    }
    func testExample_e_9() throws {
        XCTAssertEqual("9", CrackStation().decrypt(shaHash: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897"))
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
    // illegal input
    func testExample_i_339() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "6c41101fe24a8f80c8cb51781f9e9ecf8c7a4d39"))
    }
    func testExample_i_lL1() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "b57550586e79a5119208d82f592afa2fec833e7f"))
    }
    func testExample_i_neg10() throws {
        XCTAssertEqual(nil, CrackStation().decrypt(shaHash: "35c0ba310bf18ad1a4c2544a19cee254ca5d900f"))
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
    func testExample_e_aa() throws {
        XCTAssertEqual("aa", CrackStation().decrypt(shaHash: "e0c9035898dd52fc65c41454cec9c4d2611bfb37"))
    }
    func testExample_e_zz() throws {
        XCTAssertEqual("zz", CrackStation().decrypt(shaHash: "d7dacae2c968388960bf8970080a980ed5c5dcb7"))
    }
    func testExample_e_AA() throws {
        XCTAssertEqual("AA", CrackStation().decrypt(shaHash: "801c34269f74ed383fc97de33604b8a905adb635"))
    }
    func testExample_e_ZZ() throws {
        XCTAssertEqual("ZZ", CrackStation().decrypt(shaHash: "d308e0b2d36c5d2420869c6bf112e31e8d5b0d52"))
    }
    func testExample_e_00() throws {
        XCTAssertEqual("00", CrackStation().decrypt(shaHash: "fb96549631c835eb239cd614cc6b5cb7d295121a"))
    }
    func testExample_e_99() throws {
        XCTAssertEqual("99", CrackStation().decrypt(shaHash: "9a79be611e0267e1d943da0737c6c51be67865a0"))
    }

    
}

