//
//  ViewController.swift
//   10 rows
//
//  Created by Ben Tee on 2021/3/15.
//  Copyright © 2021 TKY co. All rights reserved.
//

import UIKit

class TenRowsViewController: UITableViewController {


  
  override func viewDidLoad() {
    super.viewDidLoad()
  // Do any additional setup after loading the view.
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    tableView.rowHeight = 100
    let cell = tableView.dequeueReusableCell(withIdentifier: "TenRowsCell", for: indexPath)
    if let label = cell.viewWithTag(777) as? UILabel {
      for _ in indexPath {
        label.text = "This is section \(indexPath.section), row \(indexPath.row)"
      }
    }
    return cell
  }
}

