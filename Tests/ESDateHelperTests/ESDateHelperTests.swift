import XCTest
@testable import ESDateHelper

final class ESDateHelperTests: XCTestCase {
    
    static var allTests = [
        ("testSameDate", testSameDate),
    ]
    
    func testSameDate() {
        let dateString = "2020-06-12T02:42+0300"
        let date = Date(fromString: dateString, format: .isoDateTime)
        let dateToString = date?.toString(format: .isoDateTime)
        XCTAssertNotNil(dateToString, "date string is nil")
        guard let stringDate = dateToString else {
            XCTFail("dateToString cant be nil")
            return
        }
        XCTAssert(dateString == stringDate, "somthin goes wrong")
    }
}
