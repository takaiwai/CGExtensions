import Quick
import Nimble
import CGExtensions

class CGSizeExtensionsSpec: QuickSpec {
    override func spec() {
        describe("CGSize+Extensions") {
            
            describe("init(_:_:)") {
                it("takes two CGFloats without argument names") {
                    let p = CGSize(100.5, 210.8)
                    expect(p) == CGSize(width: 100.5, height: 210.8)
                }
            }
            
        }
    }
}
 
