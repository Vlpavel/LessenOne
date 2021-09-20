//
//  ProfileViewController.swift
//  Weather v2
//
//  Created by Павел Власов on 19.09.2021.
//

import UIKit



class ProfileViewController: UIViewController {
    
    @IBOutlet private weak var CollectionView: UICollectionView!
    
    let nameAr = ["Маша","Даша","Саша","Паша","Коля","Миша","Ваня","Настя","Олег","Сережа","Алиса","Вадим","Лера"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}

extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    }
    
    
}
