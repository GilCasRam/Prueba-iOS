//
//  NameTableViewCell.swift
//  Examen-iOS
//
//  Created by Gil CasRam on 10/07/21.
//

import UIKit

class NameTableViewCell: UITableViewCell{

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameText.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(nameText.text ?? "")
        
    
}
    @IBAction func botonAction(_ sender: Any) {
        
    }
}

//MARK: -UITextFielDelegate

extension UITableViewCell: UITextFieldDelegate{
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
