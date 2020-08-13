import XCTest
@testable import ESDateHelper

final class ESDateHelperTests: XCTestCase {
    
    static var allTests = [
        ("testSameDate", testSameDate),
        ("testAdjustDay", testAdjustDay),
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
        XCTAssert(dateString == stringDate, "somthing goes wrong")
    }
    
    func testAdjustDay() {
        let dateString = "2020-06-12T02:42+0300"
        let date = Date(fromString: dateString, format: .isoDateTime)
        let adjustDayDate = date?.adjust(.day, offset: 1)
        let dateToString = adjustDayDate?.toString(format: .isoDateTime)
        XCTAssertNotNil(date, "date string is nil")
        XCTAssertNotNil(adjustDayDate, "date string is nil")
        XCTAssertNotNil(dateToString, "date string is nil")
        XCTAssert(date!.isBeforeDate(adjustDayDate!), "somthing goes wrong")
        XCTAssert(dateToString! == "2020-06-13T02:42+0300", "somthing goes wrong")
        
    }
}
