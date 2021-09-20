//
//  FriendsViewController.swift
//  Weather v2
//
//  Created by Павел Власов on 19.09.2021.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet private weak var TableView: UITableView!
    
    
    let myDaa = ["Маша","Даша","Саша","Паша","Коля","Миша","Ваня","Настя","Олег","Сережа","Алиса","Вадим","Лера"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.register(UINib.init(nibName: R.Cell.bird, bundle: nil), forCellReuseIdentifier: R.Cell.bird)
        TableView.delegate = self
        TableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDaa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.Cell.bird,
                                                 for: indexPath) as! BirdTableViewCell
        cell.myLabel.text = myDaa[indexPath.row]
        
        return cell
    }
}

