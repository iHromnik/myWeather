//
//  GradientView.swift
//  myWeather
//
//  Created by iHRomnik on 01.03.2024.
//

import UIKit

@IBDesignable

class GradientView: UIView {
    
        
        
        
       @IBInspectable var startColor: UIColor = .yellow {
           didSet {
               self.updateColors()
           }
       }
        @IBInspectable var endColor: UIColor = .black {
            didSet {
                self.updateColors()
            }
        }
        
        @IBInspectable var startLocarion: CGFloat = 0 {
            didSet {
                self.updateLocation()
            }
        }
        @IBInspectable var endLocarion: CGFloat = 1 {
            didSet {
                self.updateLocation()
            }
        }
        
        @IBInspectable var startPoint: CGPoint = .zero {
            didSet {
                self.updateStartPoint()
            }
        }
        @IBInspectable  var endPoint: CGPoint = CGPoint(x: 0, y: 1) {
            didSet {
                self.updateEndtPoint()
            }
        }
        
        override static var layerClass: AnyClass {
            return CAGradientLayer.self
        }
        
        var gradientLayer: CAGradientLayer {
            return self.layer as! CAGradientLayer
            
        }
        
        func updateLocation() {
            self.gradientLayer.locations = [self.startLocarion as NSNumber, self.endLocarion as NSNumber]
        }
        
        func updateColors() {
            self.gradientLayer.colors = [self.startColor.cgColor, self.endColor.cgColor]
        }
        func updateStartPoint() {
            self.gradientLayer.startPoint = startPoint
        }
        func updateEndtPoint() {
            self.gradientLayer.startPoint = endPoint
        }
        
    
    
}
