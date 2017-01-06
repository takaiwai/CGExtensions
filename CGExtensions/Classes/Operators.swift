import CoreGraphics

// MARK: - CGPoint and CGFloat

public func + (p: CGPoint, s: CGFloat) -> CGPoint {
    return CGPoint(x: p.x+s, y: p.y+s)
}

public func - (p: CGPoint, s: CGFloat) -> CGPoint {
    return CGPoint(x: p.x-s, y: p.y-s)
}

public func * (p: CGPoint, s: CGFloat) -> CGPoint {
    return CGPoint(x: p.x*s, y: p.y*s)
}

public func / (p: CGPoint, s: CGFloat) -> CGPoint {
    return CGPoint(x: p.x/s, y: p.y/s)
}


// MARK: - CGPoint and CGPoint

public func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x+rhs.x, y: lhs.y+rhs.y)
}

public func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x-rhs.x, y: lhs.y-rhs.y)
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
