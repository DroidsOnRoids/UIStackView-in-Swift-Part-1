//
//  FunnyAnimalsCollection.swift
//  UIStackViewDemo-1
//
//  Created by Michal Pyrka on 26/09/15.
//  Copyright © 2015 Droids On Roids. All rights reserved.
//

import UIKit

protocol FunnyAnimalsCollection {
    var name: String { get }
    var isNew: Bool { get set }
    var thumbnailPhoto: UIImage { get }
    var photos: [UIImage] { get }
    var collectionDescription: String { get }
}

struct FunnyDogsCollection: FunnyAnimalsCollection {
    var name: String = "Funny dogs"
    var isNew: Bool = false
    var thumbnailPhoto: UIImage = UIImage(named: "dog")!
    var photos: [UIImage] = (1...4).map { UIImage(named: "dog\($0)")! }
    var collectionDescription: String = "A very funny dogs collection, ha ha ha"
}

struct FunnyCatsCollection: FunnyAnimalsCollection {
    var name: String = "Funny cats"
    var isNew: Bool = false
    var thumbnailPhoto: UIImage = UIImage(named: "cat")!
    var photos: [UIImage] = (1...4).map { UIImage(named: "cat\($0)")! }
    var collectionDescription: String = "Have you seen these cats? They are all so adorable"
}

struct FunnyLlamasCollection: FunnyAnimalsCollection {
    var name: String = "Funny llamas"
    var isNew: Bool = false
    var thumbnailPhoto: UIImage = UIImage(named: "llama")!
    var photos: [UIImage] = (1...4).map { UIImage(named: "llama\($0)")! }
    var collectionDescription: String = "You gotta see this! Llamas are the funniest"
}