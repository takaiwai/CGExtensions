import Foundation
import CoreGraphics

extension FloatingPoint {
    
    public var degreesInRadians: Self {
        return self * .pi / 180
    }
    
    public var radiansInDegrees: Self {
        return self * 180 / .pi
    }
    
    public func normanizedAngle(base: Self) -> Self {
        if base.isLessThanOrEqualTo(0) {
            NSException(name: .invalidArgumentException, reason: "base must be greater than 0.0", userInfo:nil).raise()
        }

        if(self.isLess(than: 0)) {
            let negated = self.negated().truncatingRemainder(dividingBy: base)
            return base - negated
        } else {
            return self.truncatingRemainder(dividingBy: base)
        }
    }

    public var normalizedRadians: Self {
        return self.normanizedAngle(base: .pi * 2)
    }

    public var normalizedDegrees: Self {
        return self.normanizedAngle(base: 360)
    }

}
