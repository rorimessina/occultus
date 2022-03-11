//
//  Scena1.swift
//  provagioco1
//
//  Created by Aurora Messina on 04/03/22.
//

import Foundation
import SpriteKit

class MappaScene : SKScene {
    
 let mappa2 = SKSpriteNode(imageNamed: "mappa2")
    
    override func sceneDidLoad() {
        addChild(mappa2)
        mappa2.position = CGPoint(x: frame.midX, y: frame.midY)
        mappa2.size = CGSize(width: 1.0, height: 0.5)
    }
    
}
