//
//  BookCategery.swift
//  BookStore
//
//  Created by asmaa gamal  on 28/03/2024.
//

import Foundation
enum BookCategery:Identifiable , CaseIterable{
    case children
    case science
    case math
    case business
    case fiction
    var id: Self {
        return self
    }
    var categeryNAme:String{
        switch self {
        case .children:
            "children"
        case .science:
            "science"
        case .math:
            "math"
        case .business:
            "business"
        case .fiction:
            "fiction"
        
        }
    }
}
