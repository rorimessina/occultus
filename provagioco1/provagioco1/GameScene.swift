//
//  GameScene.swift
//  provagioco1
//a
//  Created by Aurora Messina on 04/02/22.
//

import SpriteKit
import GameplayKit


//definisci i nodi e le loro proprietà


class GameScene: SKScene {
    let nodo = SKNode ()
    let sfondo = SKSpriteNode(imageNamed: "sfondi")
    let scritta = SKLabelNode(text: "pallina")
    
    
    
    let CreaPartita =  SKSpriteNode(imageNamed: "CreaPartita");
    let CaricaPartita = SKSpriteNode(imageNamed: "CaricaPartita")
    let Istruzioni = SKSpriteNode(imageNamed: "Istruzioni")
    let Titolo = SKSpriteNode(imageNamed: "occultus")
    
    
    //appendi i nodi, gestisci posizione e dimensione
    //con questa funzione carichiamo la schermata
    override func sceneDidLoad() {
        addChild(sfondo)
        addChild(CreaPartita)
        addChild(CaricaPartita)
        addChild(Istruzioni)
        addChild(Titolo)
        sfondo.position = CGPoint(x: frame.midX, y: frame.midY)
        CreaPartita.position = CGPoint(x: frame.midX, y: frame.midY)
        sfondo.zPosition = -1
        CreaPartita.zPosition = 1
        CaricaPartita.zPosition = 1
        Istruzioni.zPosition = 1
        scritta.zPosition = 2
        scritta.fontSize = 25.0
        scritta.fontColor = .blue
        scritta.fontName = "Futura Bold"
        CreaPartita.position = CGPoint(x: CreaPartita.frame.midX, y: CreaPartita.frame.midY )
        CreaPartita.size = CGSize(width: 525.0, height: 100.0)
        CaricaPartita.position = CGPoint(x: frame.midX, y: (CreaPartita.position.y - 120.0))
        CaricaPartita.size = CGSize(width: 525.0, height: 100.0)
        Istruzioni.position = CGPoint(x: frame.midX, y: (CaricaPartita.position.y - 120.0))
        Istruzioni.size = CGSize(width: 525.0, height: 100.0)
        Titolo.position = CGPoint(x: frame.midX, y: (CreaPartita.position.y + 200.0))
        Titolo.size = CGSize(width: 650.0, height: 150.0)    }
    
    //con le prime due variabili intercettiamo informazione sul punto
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tocco = touches.first
        let posizione = tocco?.location(in: self)
        
        let nodotoccato = nodes(at: posizione!)
        
        if(CreaPartita.position.x == nodotoccato.first?.position.x &&
           CreaPartita.position.y == nodotoccato.first?.position.y) {
            
            Navigation().trasition(fromScene: self, toScene: .Menù_Principale)
            
            
        }
        
        
           
                
            }
            
        }
        
    

    
