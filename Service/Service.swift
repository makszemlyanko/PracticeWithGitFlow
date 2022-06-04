//
//  Service.swift
//  AppStoreJSONApis
//
//  Created by Maks Kokos on 04.06.2022.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(completion: @escaping ([Result], Error?) -> ()) {
        print("Fetching iTunes Apps from Service layer")
        
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else { return }
        
        // fetch data from internet
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            if let err = err {
                print("Failed to fetch app", err)
                completion([], nil)
                return
            }
            
            // succes
            guard let data = data else { return }
            
            do {
                let searchResult = try
                    JSONDecoder().decode(SearchResult.self, from: data)
                
                completion(searchResult.results, nil)
                
            } catch let jsonErr{
                print("Failed to decode json:", jsonErr)
            }
            
        }.resume() // fires off the request
    }
    
}

