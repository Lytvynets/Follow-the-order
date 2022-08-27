//
//  GameOverScreen.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 26.08.2022.
//

import UIKit
import SpriteKit
import GameplayKit
class GameOverScene: SKScene {
    
    var notificationLabel = SKLabelNode(text: "")
    var tapToStartLabel = SKLabelNode(text: "Tap to Start")
    
    override init(size: CGSize) {
        super.init(size: size)
        self.backgroundColor = #colorLiteral(red: 0.6731699386, green: 0.6444032243, blue: 0.4329370402, alpha: 1)
        addChild(notificationLabel)
        addChild(tapToStartLabel)
        
        notificationLabel.fontSize = 11
        notificationLabel.numberOfLines = 0
        notificationLabel.color = SKColor.white
        notificationLabel.fontName = "Thonburi"
        notificationLabel.position = CGPoint(x: size.width * 0.5 , y: size.height / 2)
        
        tapToStartLabel.position = CGPoint(x: size.width * 0.5 , y: size.height / 4)
        tapToStartLabel.fontSize = 30
        tapToStartLabel.fontName = "Thonburi-Bold"
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: size)
        gameScene.scaleMode = .aspectFill
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        view?.presentScene(gameScene, transition: reveal)
    }
}
