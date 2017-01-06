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


// MARK: - CGPoint and (CGFloat, CGFloat)

public func + (p: CGPoint, rhs: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: p.x+rhs.0, y: p.y+rhs.1)
}

public func - (p: CGPoint, rhs: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: p.x-rhs.0, y: p.y-rhs.1)
}

public func * (p: CGPoint, rhs: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: p.x*rhs.0, y: p.y*rhs.1)
}

public func / (p: CGPoint, rhs: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: p.x/rhs.0, y: p.y/rhs.1)
}


// MARK: - CGPoint and CGPoint



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
