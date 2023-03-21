//
//  ViewController.swift
//  JSON parsing
//
//  Created by Evgeniy Kuzin on 20.03.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let url = "https://www.cbr-xml-daily.ru/daily_json.js"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            let decoder = JSONDecoder()
            do {
                let model = try decoder.decode(Valute.self, from: data)
                print(model)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
