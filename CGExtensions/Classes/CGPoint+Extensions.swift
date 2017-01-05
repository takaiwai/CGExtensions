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
    
}
