import CoreGraphics

extension CGPoint {

    public init(_ x: CGFloat, _ y: CGFloat) {
        self.init(x: x, y: y)
    }

    public init(vector: CGVector) {
        self.init(x: vector.dx, y: vector.dy)
    }
    
    public func distance(to other: CGPoint) -> CGFloat {
        let dx = x - other.x
        let dy = y - other.y
        return sqrt(dx*dx + dy*dy)
    }
    
    public static func distanceBetween(_ p1: CGPoint, _ p2: CGPoint) -> CGFloat {
        return p1.distance(to: p2)
    }

    public func lerp(to target: CGPoint, progress: CGFloat) -> CGPoint {
        return CGPoint(
            x: self.x + (target.x - self.x) * progress,
            y: self.y + (target.y - self.y) * progress
        )
    }

    public static func lerp(from: CGPoint, to: CGPoint, progress: CGFloat) -> CGPoint {
        return from.lerp(to: to, progress: progress)
    }
    
}
