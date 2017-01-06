import Quick
import Nimble
import CGExtensions

class FloatingPointExtensionsSpec: QuickSpec {
    override func spec() {
        describe("CGFloat+Extensions") {

            describe("degreesInRadians") {
                it("returns the angle in radians") {
                    let radians = 45.0.degreesInRadians
                    expect(radians) ≈ 0.78539816339
                }
            }
            
            describe("radiansInDegrees") {
                it("return the angle in degrees") {
                    let degrees = 0.78539816339.radiansInDegrees
                    expect(degrees) ≈ 45.0
                }
            }
            
            describe("normalizedAngle(base:)") {
                it("fits the angle within 0-base") {
                    let angle1 = 30.0.normanizedAngle(base: 360.0)
                    expect(angle1) ≈ 30.0
                    
                    let angle2 = 410.0.normanizedAngle(base: 360.0)
                    expect(angle2) ≈ 50.0
                    
                    let angle3 = 17305.0.normanizedAngle(base: 360.0)
                    expect(angle3) ≈ 25.0
                }
                
                it("add multiple of base to negative value to make it fit between 0-base") {
                    let angle1 = (-25.8).normanizedAngle(base: 360.0)
                    expect(angle1) ≈ 334.2
                    
                    let angle2 = (-77025.0).normanizedAngle(base: 360.0)
                    expect(angle2) ≈ 15.0
                }
                
                it("can take any positive number as base") {
                    let angle1 = 32.0.normanizedAngle(base: 30.0)
                    expect(angle1) ≈ 2.0
                }
                
                it("will raise an exception if base is less then 0") {
                    expect {
                        20.0.normanizedAngle(base: -10.0)
                    }.to(raiseException(named: NSExceptionName.invalidArgumentException.rawValue))

                    expect {
                        20.0.normanizedAngle(base: 0.0)
                    }.to(raiseException(named: NSExceptionName.invalidArgumentException.rawValue))
                }
            }
            
            describe("normalizedRadians") {
                it("fits the angle within 0-2π") {
                    let angle1 = 10.0.normalizedRadians
                    expect(angle1) ≈ 3.71681469282
                    
                    let angle2 = (-5.0).normalizedRadians
                    expect(angle2) ≈ 1.28318530718
                }
            }
            
            describe("normalizedDegrees") {
                it("fits the angle within 0-360") {
                    let angle1 = 410.0.normalizedDegrees
                    expect(angle1) ≈ 50.0
                    
                    let angle2 = (-30.0).normalizedDegrees
                    expect(angle2) ≈ 330.0
                }
            }
            
        }
    }
}
