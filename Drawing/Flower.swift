//
//  Flower.swift
//  Drawing
//
//  Created by Ali Soner Inceoglu on 28.10.26.
//

import SwiftUI

struct Flower: Shape {
    // how much away to move this petal from the center
    var petalOffset: Double = -20
    
    var petalWidth: Double = 100
    
    
    
    nonisolated func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for number in stride(from: 0, to: Double.pi * 2, by: Double.pi / 8) {
            // rotate the petal by the current value of the loop
            let rotation = CGAffineTransform(rotationAngle: number)
            
            // move the petal to be at the center of our view
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            
            // apply rotation/position transformation
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        
        return path
    }
}
