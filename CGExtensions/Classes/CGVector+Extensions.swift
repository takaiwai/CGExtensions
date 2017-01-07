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
    }

    public var lengthSquared: CGFloat {
        get {
            return dx * dx + dy * dy
        }
    }

}
