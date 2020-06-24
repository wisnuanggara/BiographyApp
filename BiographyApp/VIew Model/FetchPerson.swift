//
//  FetchPerson.swift
//  BiographyApp
//
//  Created by Wisnu Anggara on 22/06/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import Foundation


class FetchPerson: ObservableObject {
  @Published var persons = [Person]()
     
    init() {
        let url = URL(string: "https://github.com/wisnuanggara/BiographyApp/blob/master/biography.json")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let personData = data {
                    let decodedData = try JSONDecoder().decode([Person].self, from: personData)
                    DispatchQueue.main.async {
                        self.persons = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}
