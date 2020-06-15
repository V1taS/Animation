//
//  Model.swift
//  Animation
//
//  Created by Виталий Сосин on 15.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

struct Model {
    let name: String
    let curve: String
    let force: Int
    let duration: Int
}

extension Model {
    
    static func getListAnimation() -> [Model] {
        
        var listAnimation: [Model] = []
        
        for index in 0..<DataManager.shared.nameAnimation.count {
            let animation = Model(name: DataManager.shared.nameAnimation[index],
                                  curve: DataManager.shared.curveAnimation[index],
                                  force: DataManager.shared.forceAnimation,
                                  duration: DataManager.shared.duration)
            listAnimation.append(animation)
        }
        return listAnimation
    }
}
