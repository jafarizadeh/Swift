//
//  Shapes.swift
//  WeatherApp
//
//  Created by Mehdi JAFARI ZADEH on 21/07/2023.
//

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to:
                    CGPoint(
                        x: rect.minX - 1,
                        y: rect.minY))
        
        path.addQuadCurve(to:
                            CGPoint(
                                x: rect.maxX + 1,
                                y: rect.minY) ,
                          control:
                            CGPoint(
                                x: rect.midX,
                                y: rect.midY))
        
        path.addLine(to:
                        CGPoint(
                            x: rect.maxX + 1,
                            y: rect.maxY + 1))
        
        path.addLine(to:
                        CGPoint(
                            x: rect.minX - 1,
                            y: rect.maxY + 1))
        
        path.closeSubpath()
        
        return path
    }
}
