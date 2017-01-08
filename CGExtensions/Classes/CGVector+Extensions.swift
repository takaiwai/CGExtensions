import CoreGraphics

extension CGVector {

    public init(point: CGPoint) {
        self.init(dx: point.x, dy: point.y)
    }

    public init(angle radians: CGFloat) {
        self.init(angle: radians, length: 1.0)
    }

    public init(angle radians: CGFloat, length: CGFloat) {
        self.init(dx: cos(radians) * length, dy: sin(radians) * length)
    }

    public var length: CGFloat {
        get {
            return sqrt(self.lengthSquared)
        }
        set(newLength) {
            let scale = self.length / newLength
            dx /= scale
            dy /= scale
        }
    }

    public var lengthSquared: CGFloat {
        get {
            return dx * dx + dy * dy
        }
    }

    public var angle: CGFloat {
        get {
            return atan2(dy, dx)
        }
        set(newAngle) {
            let currentLength = self.length
            dx = cos(newAngle) * currentLength
            dy = sin(newAngle) * currentLength
        }
    }

    public var polarComponents: (angle: CGFloat, length: CGFloat) {
        get {
            return (self.angle, self.length)
        }
    }

    public func normalized() -> CGVector {
        var n = self
        n.normalize()
        return n
    }

    public mutating func normalize() {
        self.length = 1.0
    }

    public func rotated(by angle: CGFloat) -> CGVector {
        var rotated = self
        rotated.rotate(by: angle)
        return rotated
    }

    public mutating func rotate(by angle: CGFloat) {
        let newDx = dx * cos(angle) - dy * sin(angle)
        let newDy = dx * sin(angle) + dy * cos(angle)
        dx = newDx
        dy = newDy
    }

    static let tolerance: CGFloat = 0.0001

    public func isParallel(to other: CGVector) -> Bool {
        return abs(self.dx * other.dy - self.dy * other.dx) < CGVector.tolerance
    }

    public func isPerpendicular(to other: CGVector) -> Bool {
        return abs(self.dotProduct(other)) < CGVector.tolerance
    }

    public func dotProduct(_ other: CGVector) -> CGFloat {
        return self.dx * other.dx + self.dy * other.dy
    }

    public static func angleBetween(_ v1: CGVector, _ v2: CGVector) -> CGFloat {
        let angle1 = v1.angle
        let angle2 = v2.angle
        return abs(angle1 - angle2).normanizedAngle(base: .pi)
    }

}
