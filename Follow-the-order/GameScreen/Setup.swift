//
//  Setup.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 27.08.2022.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

extension GameScene {
    
    func createBackground(){
        scene?.size = UIScreen.main.bounds.size
        scene?.physicsWorld.gravity.dy = 0
        let background = SKSpriteNode(imageNamed: "a529f594aab155e3de451e5c5b0f3e45")
        background.zPosition = 0
        background.position = convertPoint(fromView: CGPoint(x: (view?.frame.minX)!, y: (view?.frame.minY)! + 200))
        addChild(background)
    }
    
    func setup() {
        object1 = createObject()
        object2 = createObject()
        object3 = createObject()
        object4 = createObject()
        object5 = createObject()
        object6 = createObject()
        object7 = createObject()
        object8 = createObject()
        object9 = createObject()
        object10 = createObject()
        
        object1.zPosition = 1
        object2.zPosition = 1
        object3.zPosition = 1
        object4.zPosition = 1
        object5.zPosition = 1
        object6.zPosition = 1
        object7.zPosition = 1
        object8.zPosition = 1
        object9.zPosition = 1
        object10.zPosition = 1
        
        addChild(object1)
        addChild(object2)
        addChild(object3)
        addChild(object4)
        addChild(object5)
        
        array.append(object1)
        array.append(object2)
        array.append(object3)
        array.append(object4)
        array.append(object5)
    }
}
