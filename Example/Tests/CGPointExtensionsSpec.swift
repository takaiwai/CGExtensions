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

            describe("init(vector:)") {
                it("takes a CGVector") {
                    let p = CGPoint(vector: CGVector(dx: 10.0, dy: 20.5))
                    expect(p) == CGPoint(x: 10.0, y: 20.5)
                }
            }
            
            describe("distance(to:)") {
                it("calculates distance to the other point") {
                    let p1 = CGPoint(0, 1)
                    let p2 = CGPoint(0, 2)
                    expect(p1.distance(to: p2)) == 1.0
                    expect(p2.distance(to: p1)) == 1.0
                }
                
                it("is commutative") {
                    let p1 = CGPoint(643.234, -2423.34)
                    let p2 = CGPoint(0.0, 926483.736)
                    expect(p1.distance(to: p2)) == p2.distance(to: p1)
                }
                
                it("handles other cases") {
                    expect(CGPoint(10.0, 20.0).distance(to: CGPoint(30.0, 40.0))) ≈ 28.284271
                    expect(CGPoint(-478.983, 3247.342).distance(to: CGPoint(3243.232, -32.3432))) ≈ 4960.9697
                }
                
                it("handles zero case") {
                    expect(CGPoint(0.0, 0.0).distance(to: CGPoint(0.0, 0.0))) == 0.0
                }
            }
            
            describe("CGPoint.distanceBetween(_:_:)") {
                it("calculates distance between the two points") {
                    let p1 = CGPoint(10.0, 20.0)
                    let p2 = CGPoint(30.0, 40.0)
                    let result = CGPoint.distanceBetween(p1, p2)
                    expect(result) ≈ 28.284271
                }
            }

            describe("lerp(to:progress:)") {
                let p1 = CGPoint(x: 0.0, y: 0.0)
                let p2 = CGPoint(x: 100.0, y: 50.0)

                it("performs linear interpolation between the points") {
                    let result = p1.lerp(to: p2, progress: 0.2)
                    expect(result) == CGPoint(x: 20.0, y: 10.0)
                }

                it("takes progress (0.0 - 1.0)") {
                    let r1 = p1.lerp(to: p2, progress: 0.0)
                    expect(r1) == p1

                    let r2 = p1.lerp(to: p2, progress: 1.0)
                    expect(r2) == p2
                }

                it("works with any arbitrary point") {
                    let from = CGPoint(x: -491.5273, y: 721.3154)
                    let to = CGPoint(x: 72.67395, y: -492.43225)

                    let result = from.lerp(to: to, progress: 0.23217529)

                    expect(result.x) ≈ -360.5337
                    expect(result.y) ≈ 439.5132
                }
            }
            
        }
    }
}
