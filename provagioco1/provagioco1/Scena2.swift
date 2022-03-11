//
//  Scena2.swift
//  provagioco1
//
//  Created by chiara raffagnino on 11/03/22.
//

import Foundation
import SpriteKit

class PartitaNuova : SKScene {
    
 let mappa = SKSpriteNode(imageNamed: "mappa")
    
    override func sceneDidLoad() {
        addChild(mappa)
        mappa.position = CGPoint(x: frame.midX, y: frame.midY)
        mappa.size = CGSize(width: 1.0, height: 1.0)
    }
    
}
