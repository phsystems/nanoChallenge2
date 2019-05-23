//
//  Personagem.swift
//  nanoChallenge2
//
//  Created by Gabriel Zanatto Salami on 23/05/19.
//  Copyright © 2019 Gabriel Zanatto Salami. All rights reserved.
//

import Foundation
class Personagem{
    var id: Int
    var nome: String
    var aniversario: String?
    var ocupacao: [String]?
    var img: String
    var estado: String?
    var apelido: String?
    var aparicoes: [Int]?
    var ator: String?
    
    init(id: Int, nome: String, img: String) {
        self.id = id
        self.nome = nome
        self.img = img
    }
}
