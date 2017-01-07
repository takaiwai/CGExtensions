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

            describe("init(angle:)") {
                it("returns an unit vector which has the specified angle in radians") {
                    let v1 = CGVector(angle: 0.0)
                    expect(v1) == CGVector(dx: 1.0, dy: 0.0)

                    let v2 = CGVector(angle: CGFloat(30.0).degreesInRadians)
                    expect(v2.dx) ≈ 0.8660254
                    expect(v2.dy) ≈ 0.5

                    let v3 = CGVector(angle: CGFloat(135.0).degreesInRadians)
                    expect(v3.dx) ≈ -0.70710677
                    expect(v3.dy) ≈ 0.70710677
                }

                it("is a unit vector") {
                    let v1 = CGVector(angle: 0.0)
                    expect(v1.length) ≈ 1.0

                    let v2 = CGVector(angle: CGFloat(30.0).degreesInRadians)
                    expect(v2.length) ≈ 1.0

                    let v3 = CGVector(angle: CGFloat(135.0).degreesInRadians)
                    expect(v2.length) ≈ 1.0
                }
            }

            describe("init(angle:length:)") {
                it("returns a vector which has the specified angle in radians, and length") {
                    let v1 = CGVector(angle: 0.0, length: 3.5)
                    expect(v1) == CGVector(dx: 3.5, dy: 0.0)

                    let v2 = CGVector(angle: CGFloat(30.0).degreesInRadians, length: 25.0)
                    expect(v2.dx) ≈ 21.650635
                    expect(v2.dy) ≈ 12.5

                    let v3 = CGVector(angle: CGFloat(135.0).degreesInRadians, length: 5.0)
                    expect(v3.dx) ≈ -3.535534
                    expect(v3.dy) ≈ 3.535534
                }

                it("has the specified length") {
                    let v1 = CGVector(angle: 0.0, length: 3.5)
                    expect(v1.length) ≈ 3.5

                    let v2 = CGVector(angle: CGFloat(30.0).degreesInRadians, length: 25.0)
                    expect(v2.length) ≈ 25.0

                    let v3 = CGVector(angle: CGFloat(135.0).degreesInRadians, length: 5.0)
                    expect(v3.length) ≈ 5.0
                }
            }

            describe("length") {
                describe("getter") {
                    it("returns its length") {
                        let v1 = CGVector(dx: 527.0, dy:81.0)
                        expect(v1.length) ≈ 533.18854

                        let v2 = CGVector(dx: -184.6, dy: 0.2)
                        expect(v2.length) ≈ 184.60011
                    }
                }

                describe("setter") {
                    it("mutates its length while maintaining the angle") {
                        var v1 = CGVector(dx: 527.0, dy:81.0)
                        let a1 = v1.angle
                        v1.length = 2.0

                        expect(v1.angle) ≈ a1
                        expect(v1.length) ≈ 2.0

                        var v2 = CGVector(dx: -184.6, dy: 0.2)
                        let a2 = v2.angle
                        v2.length = 45.82

                        expect(v2.angle) ≈ a2
                        expect(v2.length) ≈ 45.82
                    }
                }
            }

            describe("lengthSquared") {
                it("returns a squared length") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    expect(v1.lengthSquared) ≈ 284290.0

                    let v2 = CGVector(dx: -184.6, dy: 0.2)
                    expect(v2.lengthSquared) ≈ 34077.2
                }
            }

            describe("angle") {
                describe("getter") {
                    it("returns its angle in radians") {
                        let v1 = CGVector(dx: 527.0, dy:81.0)
                        expect(v1.angle) ≈ 0.15250674

                        let v2 = CGVector(dx: -184.6, dy: 0.2)
                        expect(v2.angle) ≈ 3.1405091
                    }
                }

                describe("setter") {
                    it("mutates its angle while maintaining the length") {
                        var v1 = CGVector(dx: 527.0, dy:81.0)
                        let l1 = v1.length
                        v1.angle = CGFloat.pi / 2

                        expect(v1.length) ≈ l1
                        expect(v1.angle) ≈ CGFloat.pi / 2

                        var v2 = CGVector(dx: -184.6, dy: 0.2)
                        let l2 = v2.length
                        v2.angle = 2.538

                        expect(v2.length) ≈ l2
                        expect(v2.angle) ≈ 2.538
                    }
                }
            }

            describe("polarComponents") {
                it("returns a tuple of (angle, length)") {
                    let (angle, length) = CGVector(dx: 527.0, dy:81.0).polarComponents
                    expect(angle) ≈ 0.15250674
                    expect(length) ≈ 533.18854

                    let c = CGVector(dx: -184.6, dy: 0.2).polarComponents
                    expect(c.angle) ≈ 3.1405091
                    expect(c.length) ≈ 184.60011
                }
            }

        }
    }
}
