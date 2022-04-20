//
//  Scena1.swift
//  provagioco1
//
//  Created by Aurora Messina on 04/03/22.
//

import Foundation
import SpriteKit

class CreateGame : SKScene {
    
 let mappa2 = SKSpriteNode(imageNamed: "mappa2")
    //let tastoindietro = SKSpriteNode(imageNamed: "freccia")
    let giovanna = SKSpriteNode(imageNamed: "giovanna")
    let CameraNode = SKCameraNode()
    
    //tasti per il movimento
    
    let goOn = SKSpriteNode(imageNamed: "freccisaSu")
    let goBack = SKSpriteNode(imageNamed: "frecciaGiù")
    let goRight = SKSpriteNode(imageNamed: "frecciaDestra")
    let goLeft = SKSpriteNode(imageNamed: "frecciaSinistra")
    
    
    
    override func sceneDidLoad() {
        
     
        mappa2.position = CGPoint(x: frame.midX, y: frame.midY)
        //mappa2.size = CGSize(width: frame.width, height: frame.height)
        mappa2.zPosition = -1
        
        //tastoindietro.position = CGPoint(x: (frame.minX + 80.0) , y: (frame.midY + 420.0))
        //tastoindietro.size = CGSize (width: 160.0, height: 160.0)
        //tastoindietro.zPosition = 1
        
        giovanna.size = CGSize(width: 80.0, height: 140.0)
        giovanna.position = CGPoint(x: frame.midX, y: frame.midY)
        
        goOn.size = CGSize(width: 70.0, height: 70.0)
        goOn.position = CGPoint(x: (frame.minX + 180.0), y: (frame.midY - 220.0))
        
        goBack.size = CGSize(width: 70.0, height: 70.0)
        goBack.position = CGPoint(x: (goOn.position.x), y: (goOn.position.y - 160.0))
        
        goRight.size = CGSize(width: 70.0, height: 70.0)
        goRight.position = CGPoint(x: (goOn.position.x + 80.0), y: (goOn.position.y - 80.0))
        
        goLeft.size = CGSize(width: 70.0, height: 70.0)
        goLeft.position = CGPoint(x: (goRight.position.x - 160.0), y: (goOn.position.y - 80.0))
        
        addChild(mappa2)
        //addChild(tastoindietro)
        addChild(giovanna)
        addChild(goOn)
        addChild(goBack)
        addChild(goRight)
        addChild(goLeft)
        
        camera = CameraNode
        
        
    }
    
    //invocata ogni volta che richiamiamo il frame del nostro gioco, gli fps indicano quante volte al secondo viene richiamata
    override func update(_ currentTime: TimeInterval) {
        camera?.position.x = giovanna.position.x
        camera?.position.y = giovanna.position.y
    }
    
    
    
    
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       let tocco = touches.first
       let posizione = tocco?.location(in: self)
        
       let nodotoccato = nodes(at: posizione!)
        
        if(goOn.position.x == nodotoccato.first?.position.x &&
           goOn.position.y == nodotoccato.first?.position.y) {
            
            giovanna.run(SKAction.move(to: CGPoint(x: giovanna.position.x, y: (giovanna.position.y + 40.0)), duration: 1.50))
    
        }
            
         else if(goBack.position.x == nodotoccato.first?.position.x &&
                 goBack.position.y == nodotoccato.first?.position.y) {
                  
             giovanna.run(SKAction.move(to: CGPoint(x: giovanna.position.x, y: (giovanna.position.y - 40.0)), duration: 1.50))
            
        }
        
    else if(goRight.position.x == nodotoccato.first?.position.x &&
            goRight.position.y == nodotoccato.first?.position.y) {
             
        giovanna.run(SKAction.move(to: CGPoint(x: giovanna.position.x + 40.0, y: giovanna.position.y), duration: 1.50))
       
   }
    
    else if(goLeft.position.x == nodotoccato.first?.position.x &&
            goLeft.position.y == nodotoccato.first?.position.y) {
             
        giovanna.run(SKAction.move(to: CGPoint(x: giovanna.position.x - 40.0, y: giovanna.position.y), duration: 1.50))
    
    
    
}

        
    
}
    
    
    
}
    


