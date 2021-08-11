//
//  SelfieTableViewCell.swift
//  Examen-iOS
//
//  Created by Gil CasRam on 10/07/21.
//

import UIKit

class SelfieTableViewCell: UITableViewCell {
    
    let foto: UIImagePickerController = UIImagePickerController()

    
    @IBOutlet weak var botonSelfie: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(botonSelfie.textInputMode ?? "")
        print("hola")
        
        
    }
    
    
    @IBAction func hacerfotoAction(_ sender: Any) {
        print("hola")
      

    }
}
