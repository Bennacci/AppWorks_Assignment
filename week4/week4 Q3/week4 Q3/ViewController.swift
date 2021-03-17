//
//  ViewController.swift
//  week4 Q3
//
//  Created by Ben Tee on 2021/3/16.
//  Copyright © 2021 TKY co. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  @IBOutlet weak var myStationID: UILabel!
  @IBOutlet weak var myStationName: UILabel!
  @IBOutlet weak var myStationAddress: UILabel!

  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    loadJson()
    
  }
  
  struct JsonItem: Codable {
    let stationID: String
    let stationName: String
    let stationAddress: String
  }

  func loadJson() {

//    w/ Session method:
//    let configuration = URLSessionConfiguration.default
//    let session = URLSession(configuration: configuration)
//    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
//    let task = session.dataTask(with: url){
    
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    
    let task = URLSession.shared.dataTask(with: request){
      (data, response, error) in
      guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
        return
      }
      do {
        let decoder = JSONDecoder()
        let info = try decoder.decode(JsonItem.self, from: data)
        print (info)
        DispatchQueue.main.async {
          self.myStationID.text = info.stationID
          self.myStationAddress.text = info.stationAddress
          self.myStationName.text = info.stationName
        }
      } catch {
        print(error)
      }
    }
    task.resume()
  }
}
