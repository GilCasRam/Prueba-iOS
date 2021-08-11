//
//  ViewModel.swift
//  Examen-iOS
//
//  Created by Gil CasRam on 11/07/21.
//

import Foundation

final class ViewModel {
    
    func ejecutarAPI(){
        
    let urlSession = URLSession.shared
    let url =  URL(string: "https://us-central1-bibliotecadecontenido.cloudfunctions.net/helloWorld")
    
        urlSession.dataTask(with: url!){ data, reponse, error in
            
        
            print("Data \(String(describing: reponse))")
            
           
            if let data = data {
                let json = try? JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
                
                
                    }
                }.resume()
    }
            
            
            
}
        
    

        

