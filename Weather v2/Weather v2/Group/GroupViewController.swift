//
//  GroupViewController.swift
//  Weather v2
//
//  Created by Павел Власов on 19.09.2021.
//

import UIKit

class GroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet private var tableView: UITableView!
    let myData = ["Леонардо", "Киномания", "КиноКайф", "МДК", "ЁП", "Четкие", "Палата", "Психология", "Сарказм", "Борщ", "Красиво", "Стихи"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib.init(nibName: R.Cell.cat, bundle: nil), forCellReuseIdentifier: R.Cell.cat)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.Cell.cat,
                                                 for: indexPath) as! CatTableViewCell
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .gray
        return cell
    }
    
    
}



