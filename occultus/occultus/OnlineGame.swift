//
//  Scena2.swift
//  provagioco1
//
//  Created by chiara raffagnino on 11/03/22.
//

import Foundation
import SpriteKit

class JoinGame : SKScene {
    
 let mappa = SKSpriteNode(imageNamed: "mappa")
    
    override func sceneDidLoad() {
        addChild(mappa)
        mappa.position = CGPoint(x: frame.midX, y: frame.midY)
        mappa.size = CGSize(width: 700.0, height: 600.0)
    }
    
}
