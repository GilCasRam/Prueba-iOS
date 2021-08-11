//
//  GraficasTableViewCell.swift
//  Examen-iOS
//
//  Created by Gil CasRam on 10/07/21.
//

import UIKit
import Foundation

class GraficasTableViewCell: UITableViewCell {

    @IBOutlet weak var botongrafica: UIButton!
    
    private var viewModel = ViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(botongrafica.textInputMode ?? "")
    }
    
    
    @IBAction func verGraficasAction(_ sender: Any) {
       
        viewModel.ejecutarAPI()
    
    }
}
