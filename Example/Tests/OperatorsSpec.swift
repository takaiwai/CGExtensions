import Quick
import Nimble
import CGExtensions

class OperatorsSpec: QuickSpec {
    override func spec() {
        
        describe("CGPoint and CGPoint") {
            describe("+") {
                it("returns a new CGPoint by adding the two") {
                    let p1 = CGPoint(10.0, 20.0)
                    let p2 = CGPoint(1.5, 3.4)
                    let result = p1 + p2
                    expect(result) == CGPoint(11.5, 23.4)
                }
            }
            
            describe("-") {
                it("returns a new CGPoint by subtracting") {
                    let p1 = CGPoint(10.0, 20.0)
                    let p2 = CGPoint(1.5, 3.4)
                    let result = p1 - p2
                    expect(result) == CGPoint(8.5, 16.6)
                }
            }
        }
        
        describe("CGPoint and CGFloat") {
            describe("*") {
                it("returns a new CGPoint by multiplying") {
                    let p = CGPoint(10.0, 20.0)
                    let s: CGFloat = 1.5
                    let result = p * s
                    expect(result) == CGPoint(15.0, 30.0)
                }
            }
            
            describe("/") {
                it("returns a new CGPoint by dividing") {
                    let p = CGPoint(10.0, 20.0)
                    let s: CGFloat = 2.0
                    let result = p / s
                    expect(result) == CGPoint(5.0, 10.0)
                }
            }
        }

    }
}
