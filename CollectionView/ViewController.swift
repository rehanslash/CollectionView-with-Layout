//
//  ViewController.swift
//  CollectionView
//
//  Created by HigherVisibility on 21/10/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myCollectionView: UICollectionView!
    

    var picName = [String]()
    var Picture = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self

        Picture = [#imageLiteral(resourceName: "Apricot.jpeg"),#imageLiteral(resourceName: "WaterMelon.jpeg"),#imageLiteral(resourceName: "Banana.jpeg"),#imageLiteral(resourceName: "Apple.jpg"),#imageLiteral(resourceName: "Orange.jpg"),#imageLiteral(resourceName: "Apricot.jpeg"),#imageLiteral(resourceName: "WaterMelon.jpeg"),#imageLiteral(resourceName: "Banana.jpeg"),#imageLiteral(resourceName: "Apple.jpg"),#imageLiteral(resourceName: "Orange.jpg"),#imageLiteral(resourceName: "Apricot.jpeg"),#imageLiteral(resourceName: "WaterMelon.jpeg"),#imageLiteral(resourceName: "Banana.jpeg"),#imageLiteral(resourceName: "Apple.jpg"),#imageLiteral(resourceName: "Orange.jpg"),#imageLiteral(resourceName: "Apricot.jpeg"),#imageLiteral(resourceName: "WaterMelon.jpeg"),#imageLiteral(resourceName: "Banana.jpeg"),#imageLiteral(resourceName: "Apple.jpg"),#imageLiteral(resourceName: "Orange.jpg")]
      picName =  ["WaterMelon.jpeg","Apple.jpg","Banana.jpeg","Apricot.jpeg","Orange.jpg","WaterMelon.jpeg","Apple.jpg","Banana.jpeg","Apricot.jpeg","Orange.jpg","WaterMelon.jpeg","Apple.jpg","Banana.jpeg","Apricot.jpeg","Orange.jpg","WaterMelon.jpeg","Apple.jpg","Banana.jpeg","Apricot.jpeg","Orange.jpg"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picName.count
    }
 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MyCollectionViewCell
        cell?.myLable.text = self.picName[indexPath.row]
        cell?.Image.image = self.Picture[indexPath.row]
        
        return cell!
        
    }
    
}

extension ViewController:UICollectionViewDelegateFlowLayout{
    
   
     public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let width = myCollectionView.bounds.width/4

        let hieght = myCollectionView.bounds.width/4
        
        return CGSize(width: width, height: hieght)
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}






