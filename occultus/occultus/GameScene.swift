//
//  GameScene.swift
//  occultus
//
//  Created by Aurora Messina on 28/03/22.
//


import SpriteKit
import GameplayKit


//definisci i nodi e le loro proprietà


class GameScene: SKScene {
    let nodo = SKNode ()
    let sfondo = SKSpriteNode(imageNamed: "sfondo")
    let scritta = SKLabelNode(text: "pallina")
    

    let CreaPartita =  SKSpriteNode(imageNamed: "CreaPartita");
    let GiocaOnline = SKSpriteNode(imageNamed: "GiocaOnline")
    let Istruzioni = SKSpriteNode(imageNamed: "Istruzioni")
    let Titolo = SKSpriteNode(imageNamed: "occultus")
    
    
    //appendi i nodi, gestisci posizione e dimensione
    //con questa funzione carichiamo la schermata
    override func sceneDidLoad() {
        
        //appendiamo i nodi
        
        addChild(sfondo)
        addChild(CreaPartita)
        addChild(GiocaOnline)
        addChild(Istruzioni)
        addChild(Titolo)
        
        
        //proprietà dello sfondo
        
        sfondo.position = CGPoint(x: frame.midX, y: frame.midY)
        sfondo.zPosition = -1
        
        
        //proprietà "scritta"
        
        scritta.zPosition = 2
        scritta.fontSize = 25.0
        scritta.fontColor = .blue
        scritta.fontName = "Futura Bold"
        
        //proprietà tasto "Crea Partita"
        
        CreaPartita.position = CGPoint(x: frame.midX, y: frame.midY)
        CreaPartita.zPosition = 1
        CreaPartita.position = CGPoint(x: CreaPartita.frame.midX, y: CreaPartita.frame.midY )
        CreaPartita.size = CGSize(width: 500.0, height: 120.0)
        
        //proprietà tasto "Carica Partita"
        
        GiocaOnline.zPosition = 1
        GiocaOnline.position = CGPoint(x: frame.midX, y: (CreaPartita.position.y - 150.0))
        GiocaOnline.size = CGSize(width: 500.0, height: 120.0)
        
        //proprietà tasto "Istruzioni"
        
        Istruzioni.position = CGPoint(x: frame.midX, y: (GiocaOnline.position.y - 150.0))
        Istruzioni.size = CGSize(width: 500.0, height: 120.0)
        Istruzioni.zPosition = 1
       
    
        //proprietà del Titolo
        
        Titolo.position = CGPoint(x: frame.midX, y: (CreaPartita.position.y + 220.0))
        Titolo.size = CGSize(width: 650.0, height: 170.0)
        
        
    }
    
    
    
    
    //con le prime due variabili intercettiamo informazione sul punto; avviamo un azione con il primo tocco, passaggio da una scheda all'altra
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tocco = touches.first
        let posizione = tocco?.location(in: self)
        
        let nodotoccato = nodes(at: posizione!)
        
        if(CreaPartita.position.x == nodotoccato.first?.position.x &&
           CreaPartita.position.y == nodotoccato.first?.position.y) {
            
            
            
            
            Navigation().trasition(fromScene: self, toScene: .CreaPartita)
            
            
        }
        
        else if(GiocaOnline.position.x == nodotoccato.first?.position.x &&
            GiocaOnline.position.y == nodotoccato.first?.position.y) {
             
             
             
             
            Navigation().trasition(fromScene: self, toScene: .GiocaOnline)
        
        
        }
        
        else if(Istruzioni.position.x == nodotoccato.first?.position.x &&
            Istruzioni.position.y == nodotoccato.first?.position.y) {
             
             
             
             
            Navigation().trasition(fromScene: self, toScene: .Istruzioni)
        
           
                
            }
            
        }
}
    

    
