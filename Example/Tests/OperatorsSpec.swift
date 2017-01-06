import Quick
import Nimble
import CGExtensions

class OperatorsSpec: QuickSpec {
    override func spec() {

        describe("CGPoint and CGFloat") {
            describe("+") {
                it("adds rhs to both x and y") {
                    let p = CGPoint(x: 12.3, y: 56.7) + 15.0
                    expect(p) == CGPoint(x: 27.3, y: 71.7)
                }
            }

            describe("-") {
                it("subtracts rhs from both x and y") {
                    let p = CGPoint(x: 12.3, y: 56.7) - 10.0
                    expect(p.x) ≈ 2.3
                    expect(p.y) ≈ 46.7
                }
            }

            describe("*") {
                it("returns a new CGPoint by multiplying") {
                    let p = CGPoint(10.0, 20.0) * 1.5
                    expect(p) == CGPoint(15.0, 30.0)
                }
            }

            describe("/") {
                it("returns a new CGPoint by dividing") {
                    let p = CGPoint(10.0, 20.0) / 2.0
                    expect(p) == CGPoint(5.0, 10.0)
                }
            }
        }

        describe("CGPoint and (CGFloat, CGFloat)") {
            describe("+") {
                it("adds each value of tuple separately to x and y") {
                    let s = CGPoint(x: 100.0, y: 50.0) + (20.5, 10.5)
                    expect(s) == CGPoint(x: 120.5, y: 60.5)
                }
            }

            describe("-") {
                it("subtracts each value of tuple separately from x and y") {
                    let s = CGPoint(x: 100.0, y: 50.0) - (20.5, 10.5)
                    expect(s) == CGPoint(x: 79.5, y: 39.5)
                }
            }

            describe("*") {
                it("multiplies x and y separately by each value of tuples") {
                    let s = CGPoint(x: 100.0, y: 50.0) * (1.5, 2.0)
                    expect(s) == CGPoint(x: 150.0, y: 100.0)
                }
            }

            describe("/") {
                it("divides x and y separately by each value of tuples") {
                    let s = CGPoint(x: 100.0, y: 50.0) / (2.0, 5.0)
                    expect(s) == CGPoint(x: 50.0, y: 10.0)
                }
            }
        }

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
