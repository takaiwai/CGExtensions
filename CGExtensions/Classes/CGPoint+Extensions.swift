import CoreGraphics

extension CGPoint {

    public init(_ x: CGFloat, _ y: CGFloat) {
        self.init(x: x, y: y)
    }
    
    public func distance(to other: CGPoint) -> CGFloat {
        let dx = x - other.x
        let dy = y - other.y
        return sqrt(dx*dx + dy*dy)
    }
    
    public static func distanceBetween(_ p1: CGPoint, _ p2: CGPoint) -> CGFloat {
        return p1.distance(to: p2)
    }
    
}
