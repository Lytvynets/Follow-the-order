//
//  Model.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 27.08.2022.
//

import Foundation

class Model: Codable{
    let fortune: String
    init?(Fortune: Fortune){
        fortune = Fortune.fortune
    }
}
