//
//  AppsSearchController.swift
//  AppStoreJSONApis
//
//  Created by Maks Kokos on 01.06.2022.
//

import UIKit

class AppsSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .red // temporary

    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
       
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
