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

public func - (lhs: CGPoint, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.x-rhs.x, dy: lhs.y-rhs.y)
}


// MARK: - CGPoint and CGVector

public func + (p: CGPoint, v: CGVector) -> CGPoint {
    return CGPoint(x: p.x+v.dx, y: p.y+v.dy)
}

public func - (p: CGPoint, v: CGVector) -> CGPoint {
    return CGPoint(x: p.x-v.dx, y: p.y-v.dy)
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


// MARK: - CGVector and CGVector

public func + (lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx+rhs.dx, dy: lhs.dy+rhs.dy)
}

public func - (lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx-rhs.dx, dy: lhs.dy-rhs.dy)
}

infix operator ⋅: MultiplicationPrecedence
public func ⋅ (lhs: CGVector, rhs: CGVector) -> CGFloat {
    return lhs.dotProduct(rhs)
}

// MARK: - CGVector and CGFloat

public func + (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx+s, dy: v.dy+s)
}

public func - (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx-s, dy: v.dy-s)
}

public func * (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx*s, dy: v.dy*s)
}

public func / (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx/s, dy: v.dy/s)
}


// MARK: - CGVector and (CGFloat, CGFloat)

public func + (v: CGVector, s: (CGFloat, CGFloat)) -> CGVector {
    return CGVector(dx: v.dx+s.0, dy: v.dy+s.1)
}

public func - (v: CGVector, s: (CGFloat, CGFloat)) -> CGVector {
    return CGVector(dx: v.dx-s.0, dy: v.dy-s.1)
}

public func * (v: CGVector, s: (CGFloat, CGFloat)) -> CGVector {
    return CGVector(dx: v.dx*s.0, dy: v.dy*s.1)
}

public func / (v: CGVector, s: (CGFloat, CGFloat)) -> CGVector {
    return CGVector(dx: v.dx/s.0, dy: v.dy/s.1)
}
