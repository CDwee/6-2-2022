// Started at 1:37 6-2-2022

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var sprite1 : SKSpriteNode?
    var sprite2 : SKSpriteNode?
    var label : SKLabelNode?
    
    override func didMove(to view: SKView) {
        sprite1 = self.childNode(withName: "spriteNode1") as? SKSpriteNode
        sprite2 = self.childNode(withName: "spriteNode2") as? SKSpriteNode
        label = self.childNode(withName: "labelNode") as? SKLabelNode
        label?.text = "Nodes tutorial"
        
        sprite1?.position = CGPoint(x: 0, y: -500)
        sprite2?.color = UIColor.brown
        
        let shapeNode = SKShapeNode(circleOfRadius: 100)
        shapeNode.fillColor = UIColor.cyan
        shapeNode.position = CGPoint(x: 0, y: 0)
        self.addChild(shapeNode)
        //shapeNode.removeFromParent()
        
        sprite2?.anchorPoint = CGPoint(x: 0, y: 0)
        let action = SKAction.rotate(byAngle: CGFloat(6.28), duration: 2)
        sprite2?.run(action)
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}


// Ended at 6:54 6-2-2022
