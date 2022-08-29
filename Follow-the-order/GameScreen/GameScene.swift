//
//  GameScene.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 26.08.2022.
//

import UIKit
import SpriteKit
import GameplayKit

var level = 0
class GameScene: SKScene {
    
    var score = [Int]()
    var objects = [1, 2, 3, 4, 5]
    var array = [SKSpriteNode?]()
    
    var animations = Animations()
    var networkManager = NetworkManager()
    
    var object1: SKSpriteNode!
    var object2: SKSpriteNode!
    var object3: SKSpriteNode!
    var object4: SKSpriteNode!
    var object5: SKSpriteNode!
    var object6: SKSpriteNode!
    var object7: SKSpriteNode!
    var object8: SKSpriteNode!
    var object9: SKSpriteNode!
    var object10: SKSpriteNode!
    
    
    //MARK: - Did Move
    override func didMove(to view: SKView) {
        createBackground()
        setup()
        
        // level switch
        switch level {
        case 0:
            print("0 case")
            
        case 1:
            addChild(object6)
            array.append(object6)
            objects.append(6)
            print("1 case")
            
        case 2:
            addChild(object6)
            array.append(object6)
            objects.append(6)
            addChild(object7)
            array.append(object7)
            objects.append(7)
            print("2 case")
            
        case 3:
            addChild(object6)
            array.append(object6)
            objects.append(6)
            addChild(object7)
            array.append(object7)
            objects.append(7)
            addChild(object8)
            array.append(object8)
            objects.append(8)
            print("3 case")
            
        case 4:
            addChild(object6)
            array.append(object6)
            objects.append(6)
            addChild(object7)
            array.append(object7)
            objects.append(7)
            addChild(object8)
            array.append(object8)
            objects.append(8)
            addChild(object9)
            array.append(object9)
            objects.append(9)
            print("4 case")
            
        case 5:
            addChild(object6)
            array.append(object6)
            objects.append(6)
            addChild(object7)
            array.append(object7)
            objects.append(7)
            addChild(object8)
            array.append(object8)
            objects.append(8)
            addChild(object9)
            array.append(object9)
            objects.append(9)
            addChild(object10)
            array.append(object10)
            objects.append(10)
            print("5 case")
            
        default:
            print("Default")
        }
        animations.animateNodes(array)
    }
    
    
    //MARK: - Touches Began
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self)
            if object1.contains(location){
                score.append(1)
                print("1")
            }
        }
        
        for touch in touches{
            let location = touch.location(in: self)
            if object2.contains(location){
                score.append(2)
                print("2")
            }
        }
        
        for touch in touches{
            let location = touch.location(in: self)
            if object3.contains(location){
                score.append(3)
                print("3")
            }
        }
        
        for touch in touches{
            let location = touch.location(in: self)
            if object4.contains(location){
                score.append(4)
                print("4")
            }
        }
        
        for touch in touches{
            let location = touch.location(in: self)
            if object5.contains(location){
                score.append(5)
                print("5")
            }
        }
        
        
        if level == 1 {
            for touch in touches{
                let location = touch.location(in: self)
                if object6.contains(location){
                    score.append(6)
                    print("6")
                }
            }
        }
        
        
        if level == 2 {
            for touch in touches{
                let location = touch.location(in: self)
                if object6.contains(location){
                    score.append(6)
                    print("6")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object7.contains(location){
                    score.append(7)
                    print("7")
                }
            }
        }
        
        
        if level == 3 {
            for touch in touches{
                let location = touch.location(in: self)
                if object6.contains(location){
                    score.append(6)
                    print("6")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object7.contains(location){
                    score.append(7)
                    print("7")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object8.contains(location){
                    score.append(8)
                    print("8")
                }
            }
        }
        
        
        if level == 4 {
            for touch in touches{
                let location = touch.location(in: self)
                if object6.contains(location){
                    score.append(6)
                    print("6")
                }
            }
            
            
            for touch in touches{
                let location = touch.location(in: self)
                if object7.contains(location){
                    score.append(7)
                    print("7")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object8.contains(location){
                    score.append(8)
                    print("8")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object9.contains(location){
                    score.append(9)
                    print("9")
                }
            }
        }
        
        
        if level == 5 {
            for touch in touches{
                let location = touch.location(in: self)
                if object6.contains(location){
                    score.append(6)
                    print("6")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object7.contains(location){
                    score.append(7)
                    print("7")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object8.contains(location){
                    score.append(8)
                    print("8")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object9.contains(location){
                    score.append(9)
                    print("9")
                }
            }
            
            for touch in touches{
                let location = touch.location(in: self)
                if object10.contains(location){
                    score.append(10)
                    print("10")
                }
            }
        }
        gameLogic()
    }
    
    
    // Game logic
    func gameLogic() {
        if score.count == objects.count {
            if score == objects {
                print("You win!!!")
                level += 1
                networkManager.getRequest { info in
                    self.displayGameOver(text: info.fortune)
                    print("\(info.fortune)")
                }
            }else if score != objects{
                print("Ooooops")
                displayGameOver(text: "Ooooops")
            }
        }
    }
    
    
    // Transition to the game over screen
    func displayGameOver(text: String) {
        let gameOverScene = GameOverScene(size: size)
        gameOverScene.scaleMode = .aspectFill
        gameOverScene.notificationLabel.text = text
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        view?.presentScene(gameOverScene, transition: reveal)
    }
    
    
    // Creating an object
    func createObject() -> SKSpriteNode {
        let object = SKSpriteNode(imageNamed: "angry-birds-png-29")
        object.size.height = UIScreen.main.bounds.width / 5
        object.size.width = UIScreen.main.bounds.width / 5
        let randomX = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: 300) - 150)
        let randomY = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: 500) - 250)
        object.position = convertPoint(fromView: CGPoint(x: randomX + UIScreen.main.bounds.width / 2, y: randomY + UIScreen.main.bounds.height / 2))
        object.physicsBody = SKPhysicsBody(texture: object.texture!, size: object.size )
        return object
    }
}
