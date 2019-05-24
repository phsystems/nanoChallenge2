//
//  DetalheViewController.swift
//  nanoChallenge2
//
//  Created by Gabriel Zanatto Salami on 23/05/19.
//  Copyright © 2019 Gabriel Zanatto Salami. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var ator: UILabel!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var aniversario: UILabel!
    @IBOutlet weak var ocupacoes: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var apelido: UILabel!
    @IBOutlet weak var aparicoes: UILabel!
    var personagem = Personagem()
    override func viewDidLoad() {
        super.viewDidLoad()
//        image = personagem.image
//        ator = personagem.ator
//        nome = personagem.nome
//        aniversario = personagem.aniversario
//        ocupacoes = personagem.ocupacoes
//        status = personagem.status
//        apelido = personagem.apelido
//        aparicoes = personagem.aparicoes
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
