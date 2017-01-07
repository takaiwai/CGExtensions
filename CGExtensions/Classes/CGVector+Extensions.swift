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
        n.length = 1.0
        return n
    }

    public mutating func normalize() {
        self.length = 1.0
    }
}
