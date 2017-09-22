//
//  DataService.swift
//  coder-swag
//
//  Created by Tenzin Sean on 9/22/17.
//  Copyright © 2017 Tenzin Sean. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "CHF 20", imageName: "hat01.png"),
        Product(title: "Cool fun hat black", price: "CHF 10", imageName: "hat02.png"),
        Product(title: "Hat White", price: "CHF 12", imageName: "hat03.png"),
        Product(title: "Develoop logo Snapback", price: "CHF 14", imageName: "hat04.png")
    
    ]
    
    private let hoodies = [
        Product(title: "Devlopes logo hoddies", price: "CHF 12", imageName: "hoodie01.png"),
        Product(title: "Nice hoodies stuffs", price: "CHF 15", imageName: "hoodie02.png"),
        Product(title: "Hoodies stuffs", price: "CHF 15", imageName: "hoodie03.png"),
        Product(title: "Cool hoodies stuff", price: "CHF 20", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devlopes logo shirts", price: "CHF 12", imageName: "shirt01.png"),
        Product(title: "Shirts black", price: "CHF 25", imageName: "shirt02.png"),
        Product(title: "Shirt red", price: "CHF 15", imageName: "shirt03.png"),
        Product(title: "Shirt green", price: "CHF 20", imageName: "shirt04.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
        
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
            
        }
    }
    
    func getHats() -> [Product] {
        return hats
        
    }
    
    func getHoodies() -> [Product]{
        return hoodies
        
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
        
    }
}
