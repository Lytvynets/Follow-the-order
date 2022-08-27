//
//  NetworkManager.swift
//  Follow-the-order
//
//  Created by Vlad Lytvynets on 26.08.2022.
//

import Foundation

class NetworkManager {
    func getRequest(completionHandler:@escaping (Model) -> Void){
        let url = "http://yerkee.com/api/fortune"
        guard let url = URL(string: url) else { return }
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, response, error) in
            if let data = data{
                if let json = self.parseJson(withData: data){
                    completionHandler(json)
                }
            }
        }.resume()
    }
    
    
    func parseJson(withData data: Data) -> Model? {
        let decoder = JSONDecoder()
        do {
            let infoData = try decoder.decode(Fortune.self, from: data)
            guard let fortune = Model(Fortune: infoData) else { return nil }
            return fortune
        } catch {
            print(error)
        }
        return nil
    }
}
