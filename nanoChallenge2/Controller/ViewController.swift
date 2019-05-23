//
//  ViewController.swift
//  nanoChallenge2
//
//  Created by Gabriel Zanatto Salami on 23/05/19.
//  Copyright © 2019 Gabriel Zanatto Salami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var personagens = [Personagem]()
    @IBOutlet weak var teble: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        teble.dataSource = self
        teble.delegate = self
        
        guard let url = URL(string: "https://breakingbadapi.com/api/characters/1") else { return }
        
        let session = URLSession.shared
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
//            guard let response = response else {
//                return
//            }
//            guard error == nil else {
//                return
//            }
//            guard let data = data else {
//                return
//            }
            
            if let data = data {
            print(data)
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                        print(json)
                        //personagens.append(Personagem())
                } catch let erro {
                    print(erro.localizedDescription)
                }
            }
        })
        task.resume()
        
        
    }
}

extension ViewController: UITableViewDelegate{
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "detail", sender: )
//    }
//
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let nextScreenVC = segue.destination as? DetalheViewController, let data = sender as? Palestras {
//            nextScreenVC.palestra = data
//        }
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell else { fatalError() }
        
        cell.nome.text = personagens[indexPath.row].nome
        cell.id = personagens[indexPath.row].id
        cell.img.image = UIImage(named: personagens[indexPath.row].img)
        
        return cell
    }
    
    
}
