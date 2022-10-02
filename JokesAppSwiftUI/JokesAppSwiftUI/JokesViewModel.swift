//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Berkay Kuzu on 24.09.2022.
//

import Foundation
import Alamofire
 
class JokesViewModel : ObservableObject {

   @Published var jokes = [Value]() // içerisinde fıkraları tuttuğumuz jokes değişkeni, fıkraların adı value.

    
    init() { // ViewModel oluşturulduğunda çalıştırılsın diye initializerına getJokes() fonksiyonu yazıyorum.
        getJokes()
    }
    
    // İstek atma fonksiyonu:
    
    func getJokes() {
        
        // İstek atmayı Url.shared.dataTask ... yerine Alamofire kütüphanesi ile atacağız.
        
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
                
            case.success(let data): // data = Welcome datası
                let value = data.value
                self.jokes += value
            case.failure(let error):
                print(error)
            }
            
        }
    }
    
    
}

