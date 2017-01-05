import Quick
import Nimble
import CGExtensions

class CGPointExtensionsSpec: QuickSpec {
    override func spec() {
        describe("CGPoint+Extensions") {
            
            describe("init(_:_:)") {
                it("takes two CGFloats without argument names") {
                    let p = CGPoint(12.3, 45.6)
                    expect(p) == CGPoint(x: 12.3, y: 45.6)
                }
            }
            
            describe("distance(to:)") {
                it("calculates distance to the other point") {
                    let p1 = CGPoint(0, 1)
                    let p2 = CGPoint(0, 2)
                    expect(p1.distance(to: p2)) == 1.0
                    expect(p2.distance(to: p1)) == 1.0
                }
                
                it("handles other cases") {
                    expect(CGPoint(10.0, 20.0).distance(to: CGPoint(30.0, 40.0))) ≈ 28.284271
                    expect(CGPoint(-478.983, 3247.342).distance(to: CGPoint(3243.232, -32.3432))) ≈ 4960.9697
                }
                
                it("handles zero case") {
                    expect(CGPoint(0.0, 0.0).distance(to: CGPoint(0.0, 0.0))) == 0.0
                }
            }
            
        }
    }
}
