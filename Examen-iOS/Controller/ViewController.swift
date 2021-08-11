//
//  ViewController.swift
//  Examen-iOS
//
//  Created by Gil CasRam on 10/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var nombreCell = ["Introducir nombre"]
    var selfiecell = ["Tomate un selfie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource =  self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "NameTableViewCell", bundle: nil), forCellReuseIdentifier: "namecell")
        
        tableView.register(UINib(nibName: "SelfieTableViewCell", bundle: nil), forCellReuseIdentifier: "selfiecell")
        
        tableView.register(UINib(nibName: "GraficasTableViewCell", bundle: nil), forCellReuseIdentifier: "graficascell")
    }
  
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Ejercicio 1"
        }else if section == 1{
            
        return "Ejercicio 2"
            
        }else{
        
        return "Ejercicio 3"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return nombreCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "namecell",for: indexPath) as? NameTableViewCell
        
        cell?.nameLabel.text = String(indexPath.row + 1)
        cell!.nameLabel.text = nombreCell[indexPath.row]
        
        return cell!
        }else if indexPath.section == 1{
        let cell = tableView.dequeueReusableCell(withIdentifier: "selfiecell",for: indexPath) as? SelfieTableViewCell
            
            
        return cell!
    
        }else if indexPath.section == 2{
        let cell = tableView.dequeueReusableCell(withIdentifier: "graficascell",for: indexPath) as? GraficasTableViewCell
            cell?.verGraficasAction(GraficasViewController.self)
            
        return cell!

    }
        return UITableViewCell()
        
}
}



