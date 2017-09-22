//
//  Category.swift
//  coder-swag
//
//  Created by Tenzin Sean on 9/22/17.
//  Copyright © 2017 Tenzin Sean. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        
    }
    
    
    
}
