//
//  NavigationManager.swift
//  provagioco1
//
//  Created by Aurora Messina on 11/03/22.
//

import Foundation
import SpriteKit
import GameplayKit

class Navigation{
    
    enum SceneType {
        case Menù_Principale, Gameplay
    
    }
    
    var screen_size  = UIScreen.main.bounds
      
    
    func take_Scene (Scene_searched : SceneType) -> SKScene? {
        switch Scene_searched {
        case .Menù_Principale:
            return GameScene(size: screen_size.size)
        case .Gameplay:
            return MappaScene(size: screen_size.size)
        }
}
    
    func trasition (fromScene: SKScene, toScene: SceneType){
        let scene = take_Scene(Scene_searched: toScene)
        scene?.scaleMode = .resizeFill
        fromScene.view?.presentScene(scene)
    }
    
    
}

