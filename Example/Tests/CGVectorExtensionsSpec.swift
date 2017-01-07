import Quick
import Nimble
import CGExtensions

class CGVectorExtensionsSpec: QuickSpec {
    override func spec() {
        describe("CGVector+Extensions") {

            describe("init(point:)") {
                it("takes a CGPoint") {
                    let v = CGVector(point: CGPoint(x: 10.0, y: 20.5))
                    expect(v) == CGVector(dx: 10.0, dy: 20.5)
                }
            }

        }
    }
}
