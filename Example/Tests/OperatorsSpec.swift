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
        
        describe("CGSize and CGFloat") {
            describe("+") {
                it("adds right hand size to both width and height") {
                    let s = CGSize(100.0, 50.0) + 20.5
                    expect(s) == CGSize(120.5, 70.5)
                }
            }

            describe("-") {
                it("subtracts right hand size to both width and height") {
                    let s = CGSize(100.0, 50.0) - 20.5
                    expect(s) == CGSize(79.5, 29.5)
                }
            }
            
            describe("*") {
                it("multiplies right hand size to both width and height") {
                    let s = CGSize(100.0, 50.0) * 1.5
                    expect(s) == CGSize(150.0, 75.0)
                }
            }
            
            describe("/") {
                it("divides right hand size to both width and height") {
                    let s = CGSize(100.0, 50.0) / 2.0
                    expect(s) == CGSize(50.0, 25.0)
                }
            }
        }
        
        describe("CGSize and (CGFloat, CGFloat)") {
            describe("+") {
                it("adds each value of tuple separetely to width and height") {
                    let s = CGSize(100.0, 50.0) + (20.5, 10.5)
                    expect(s) == CGSize(120.5, 60.5)
                }
            }
            
            describe("-") {
                it("subtracts each value of tuple separetely from width and height") {
                    let s = CGSize(100.0, 50.0) - (20.5, 10.5)
                    expect(s) == CGSize(79.5, 39.5)
                }
            }
            
            describe("*") {
                it("multiplies width and height separetely by each value of tuples") {
                    let s = CGSize(100.0, 50.0) * (1.5, 2.0)
                    expect(s) == CGSize(150.0, 100.0)
                }
            }
            
            describe("/") {
                it("divides width and height separetely by each value of tuples") {
                    let s = CGSize(100.0, 50.0) / (2.0, 5.0)
                    expect(s) == CGSize(50.0, 10.0)
                }
            }
        }

    }
}
