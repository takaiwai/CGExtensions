// https://github.com/Quick/Quick

import Quick
import Nimble
import CGExtensions

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
        describe("these will pass") {
            it("can do maths") {
                expect(23) == 23
            }
            
            it("can read") {
                expect("🐮") == "🐮"
            }
            
            it("will eventually pass") {
                var time = "passing"
                
                DispatchQueue.main.async {
                    time = "done"
                }
                
                waitUntil { done in
                    Thread.sleep(forTimeInterval: 0.5)
                    expect(time) == "done"
                    
                    done()
                }
            }
        }
        
        describe("Geometry and trigonomitry refreshers") {
            it("checks cos()") {
                let c1 = cos(0.0)
                let c2 = cos(.pi / 2.0)
                let c3 = cos(CGFloat.pi)
                let c4 = cos(.pi * 1.5)
                let c5 = cos(.pi * 2.0)
                
                expect(c1) ≈ 1.0
                expect(c2) ≈ 0.0
                expect(c3) ≈ -1.0
                expect(c4) ≈ 0.0
                expect(c5) ≈ 1.0
            }
            
            it("checks sin()") {
                let s1 = sin(0.0)
                let s2 = sin(.pi / 2.0)
                let s3 = sin(CGFloat.pi)
                let s4 = sin(.pi * 1.5)
                let s5 = sin(.pi * 2.0)
                
                expect(s1) ≈ 0.0
                expect(s2) ≈ 1.0
                expect(s3) ≈ 0.0
                expect(s4) ≈ -1.0
                expect(s5) ≈ 0.0
            }
            
            it("checkes atan2()") {
                let a1 = atan2(0.0, 1.0)
                let a2 = atan2(1.0, 0.0)
                let a3 = atan2(0.0, -1.0)
                let a4 = atan2(-1.0, 0.0)
                
                let a5 = atan2(1.0, 1.0)
                let a6 = atan2(100.0, 100.0)
                
                expect(a1) ≈ 0.0
                expect(a2) ≈ CGFloat.pi / 2.0
                expect(a3) ≈ CGFloat.pi
                expect(a4) ≈ -CGFloat.pi / 2.0
                
                expect(a5) ≈ CGFloat.pi / 4.0
                expect(a6) ≈ CGFloat.pi / 4.0
            }
        }
        
    }
}
