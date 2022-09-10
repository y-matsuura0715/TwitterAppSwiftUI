//
//  RoundedShape.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/10.
//

import SwiftUI

struct RoundShape: Shape {
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        return Path(path.cgPath)
    }
}
