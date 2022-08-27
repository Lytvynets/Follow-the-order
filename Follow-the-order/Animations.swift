//
//  Animations.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 27.08.2022.
//

import SpriteKit
import GameplayKit

class Animations {
    func animateNodes(_ nodes: [SKSpriteNode?]) {
        for (index, node) in nodes.enumerated() {
            node!.run(.sequence([
                .wait(forDuration: TimeInterval(index) * 0.5),
                .repeatForever(.sequence([
                    .scale(to: 1.5, duration: 0.3),
                    .scale(to: 1, duration: 0.3),
                    .wait(forDuration: 30)
                ]))
            ]))
        }
    }
}
