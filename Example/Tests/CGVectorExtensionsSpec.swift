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
                    expect(v3.length) ≈ 1.0
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

            describe("normalized()") {
                it("returns a new unit vector which has the same angle") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    let n1 = v1.normalized()

                    expect(n1.angle) ≈ v1.angle
                    expect(n1.length) ≈ 1.0

                    let v2 = CGVector(dx: -184.6, dy: 0.2)
                    let n2 = v2.normalized()

                    expect(n2.angle) ≈ v2.angle
                    expect(n2.length) ≈ 1.0
                }
            }

            describe("normalize()") {
                it("mutates the vector to a length of 1.0") {
                    var v1 = CGVector(dx: 527.0, dy:81.0)
                    let a1 = v1.angle
                    v1.normalize()

                    expect(v1.angle) ≈ a1
                    expect(v1.length) ≈ 1.0

                    var v2 = CGVector(dx: -184.6, dy: 0.2)
                    let a2 = v2.angle
                    v2.normalize()

                    expect(v2.angle) ≈ a2
                    expect(v2.length) ≈ 1.0
                }
            }

            describe("rotated(by:)") {
                it("returns a new vector rotated by the specified angle") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    let r1 = v1.rotated(by: CGFloat(45.0).degreesInRadians)

                    expect(r1.angle) ≈ v1.angle + CGFloat(45.0).degreesInRadians
                    expect(r1.length) ≈ v1.length

                    let v2 = CGVector(dx: -184.6, dy: 0.2)
                    let r2 = v2.rotated(by: CGFloat(-30).degreesInRadians)

                    expect(r2.angle) ≈ v2.angle + CGFloat(-30).degreesInRadians
                    expect(r2.length) ≈ v2.length
                }
            }

            describe("rotate(by:)") {
                it("mutates the vector by rotating by specified angle in radians") {
                    var v1 = CGVector(dx: 1.0, dy: 0.0)
                    v1.rotate(by: .pi / 2)

                    expect(v1.angle) ≈ (CGFloat.pi / 2)
                }

                it("works with other cases") {
                    var v1 = CGVector(dx: 527.0, dy:81.0)
                    let l1 = v1.length
                    let a1 = v1.angle
                    v1.rotate(by: CGFloat(45.0).degreesInRadians)

                    expect(v1.angle) ≈ a1 + CGFloat(45.0).degreesInRadians
                    expect(v1.length) ≈ l1

                    var v2 = CGVector(dx: -184.6, dy: 0.2)
                    let l2 = v2.length
                    let a2 = v2.angle
                    v2.rotate(by: CGFloat(-30).degreesInRadians)

                    expect(v2.angle) ≈ (a2 + CGFloat(-30).degreesInRadians)
                    expect(v2.length) ≈ l2
                }
            }

            describe("isParallel(to:)") {
                it("returns true when two vectors are parallel") {
                    let v1 = CGVector(dx: 2.5, dy: 1.0)
                    let v2 = CGVector(dx: 5.0, dy: 2.0)

                    let result = v1.isParallel(to: v2)

                    expect(result) == true
                }

                it("returns false when two vectors are not parallel") {
                    let v1 = CGVector(dx: 2.5, dy: 1.0)
                    let v2 = CGVector(dx: 1.0, dy: 5.0)

                    let result = v1.isParallel(to: v2)

                    expect(result) == false
                }

                it("returns true when two vectors are parallel and pointing opposite directions") {
                    let v1 = CGVector(dx: 2.5, dy: 1.0)
                    let v2 = CGVector(dx: 5.0, dy: 2.0)

                    let result = v1.isParallel(to: v2)

                    expect(result) == true
                }

                it("returns true after rotating by pi") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    let p1 = v1.rotated(by: .pi)
                    expect(v1.isParallel(to: p1)) == true

                    let v2 = CGVector(dx: -184.6, dy: 0.2)
                    let p2 = v2.rotated(by: .pi)
                    expect(v2.isParallel(to: p2)) == true
                }
            }

            describe("isPerpendicular(to:)") {
                it("returns true when two vectors are perpendicular") {
                    let v1 = CGVector(angle: CGFloat(10).degreesInRadians)
                    let v2 = CGVector(angle: CGFloat(100).degreesInRadians)

                    let result = v1.isPerpendicular(to: v2)

                    expect(result) == true
                }

                it("returns false when two vectors are not perpendicular") {
                    let v1 = CGVector(angle: CGFloat(10).degreesInRadians)
                    let v2 = CGVector(angle: CGFloat(50).degreesInRadians)

                    let result = v1.isPerpendicular(to: v2)

                    expect(result) == false
                }

                it("returns true after rotating by plus/minus half pi") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    let p1 = v1.rotated(by: .pi / 2.0)
                    expect(v1.isPerpendicular(to: p1)) == true

                    let v2 = CGVector(dx: -184.6, dy: 0.2)
                    let p2 = v2.rotated(by: -.pi / 2.0)
                    expect(v2.isPerpendicular(to: p2)) == true
                }
            }

            describe("dotProduct(_:)") {
                it("calculates a dot product between two vectors") {
                    let v1 = CGVector(dx: 527.0, dy:81.0)
                    let v2 = CGVector(dx: -184.6, dy: 0.2)

                    let dotProduct = v1.dotProduct(v2)

                    expect(dotProduct) ≈ -97268.0
                }
            }

        }
    }
}
