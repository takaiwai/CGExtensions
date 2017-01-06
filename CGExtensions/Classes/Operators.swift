import CoreGraphics

// MARK: - CGPoint and CGPoint

public func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x+rhs.x, y: lhs.y+rhs.y)
}

public func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x-rhs.x, y: lhs.y-rhs.y)
}


// MARK: - CGPoint and CGFloat

public func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x*scalar, y: point.y*scalar)
}

public func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x/scalar, y: point.y/scalar)
}


// MARK: - CGSize and CGFloat

public func + (lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width + rhs, height: lhs.height + rhs)
}

public func - (lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width - rhs, height: lhs.height - rhs)
}

public func * (lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
}

public func / (lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
}


// MARK: - CGSize and (CGFloat, CGFloat)

public func + (lhs: CGSize, rhs: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: lhs.width + rhs.0, height: lhs.height + rhs.1)
}

public func - (lhs: CGSize, rhs: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: lhs.width - rhs.0, height: lhs.height - rhs.1)
}

public func * (lhs: CGSize, rhs: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: lhs.width * rhs.0, height: lhs.height * rhs.1)
}

public func / (lhs: CGSize, rhs: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: lhs.width / rhs.0, height: lhs.height / rhs.1)
}
