//
//  ModelData.swift
//  landmarks
//
//  Created by Abhishek on 29/07/24.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}


func load <T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in Bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("couldnt load \(filename) from main bundle: \n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldnt parse \(filename) as \(T.self): \(error)")
    }
}
