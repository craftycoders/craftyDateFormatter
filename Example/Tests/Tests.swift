// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import craftyDateFormatter

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("will convert string to date") {
            
             it("yyyy-MM-dd'T'HH:mm:ss.SZ") {
                guard let date = "2020-05-14T18:25:43.511Z".formatToDate(.formatJSONFriendly1) else {
                    fail("cannot generate string from given data")
                    return
                }
                expect(String(describing: date)) == "2020-05-14 18:25:43 +0000"
             }
        }
        
        describe("will convert date to string") {
            
             it("MM/dd/yy") {
                guard let date = "2020-05-14T18:25:43.511Z".formatToDate(.formatJSONFriendly1) else {
                    fail("cannot generate string from given data")
                    return
                }
                
                let dateAsString = date.formatToString(.format081420)
                expect(dateAsString) == "05/14/20"
             }
        }
    }
}
