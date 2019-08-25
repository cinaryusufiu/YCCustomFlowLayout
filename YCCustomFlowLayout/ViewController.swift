//
//  ViewController.swift
//  YCCustomFlowLayout
//
//  Created by Yusuf Çınar on 25.08.2019.
//  Copyright © 2019 Yusuf Cinar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let itemHeight  = [ 300  , 230  , 230  , 80 , 300 , 140, 300  , 230 , 300 , 300  , 230  , 230  , 300 ,300  , 230 , 300 , 300 , 300, 140, 300  , 230 , 300 , 300  , 230  , 230  , 300 ,300  , 230 , 300 , 300  ,200]
    
    lazy var customLayout : YCCustomFlowLayout = {
        let layout = YCCustomFlowLayout()
        layout.dataSource = self
        return layout
    }()
    lazy var collectionView : UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: self.customLayout)
        cv.backgroundColor = .white
        cv.dataSource = self
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
}
extension ViewController : UICollectionViewDataSource, YCCustomFlowLayoutDatasource {
    
    //MARK:UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemHeight.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = UIColor.random
        cell.layer.borderColor =  UIColor.random.cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    //MARK: YCCustomFlowLayoutDatasource
    func numberOfColomns() -> Int {
        return 3
    }
    
    func cellPadding() -> CGFloat {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, heightForItemAtIndexPath indexPath:IndexPath) -> CGFloat {
        return CGFloat(itemHeight[indexPath.row])
    }
}

extension UIColor {
    
    static var random: UIColor {
        let r:CGFloat  = .random(in: 0 ... 1)
        let g:CGFloat  = .random(in: 0 ... 1)
        let b:CGFloat  = .random(in: 0 ... 1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}




