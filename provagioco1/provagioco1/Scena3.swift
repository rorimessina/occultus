//
//  Scena3.swift
//  provagioco1
//
//  Created by chiara raffagnino on 11/03/22.
//

import Foundation
import SpriteKit

class Istruzioni : SKScene {
    
 let mappa3 = SKSpriteNode(imageNamed: "mappa3")
    
    override func sceneDidLoad() {
        addChild(mappa3)
        mappa3.position = CGPoint(x: frame.midX, y: frame.midY)
        mappa3.size = CGSize(width: 1.0, height: 1.0)
    }
    
}
