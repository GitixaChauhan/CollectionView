//
//  ViewController.swift
//  CollectionViewWihTableView
//
//  Created by Gitixa Chauhan on 31/03/23.
//

import UIKit

var eData = [
              EnterTainmentApp(sectionType: "Different Views", imageGallery: ["sunset1", "sunset3", "sunset4", "sunset5", "sunset1", "sunset3", "sunset4", "sunset5"]),
              EnterTainmentApp(sectionType: "Animals Name", imageGallery: ["hourse", "fox", "tiger", "rabbit", "cat", "deer", "deer", "deer", "deer", "deer", "deer", "deer"]),
              EnterTainmentApp(sectionType: "Web Series", imageGallery: ["e", "c", "d", "e", "b"]),
              EnterTainmentApp(sectionType: "Fruits Name", imageGallery: ["apple", "mango", "apple", "mango"])
              
]

class ViewController: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mytableViewCell
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
      
    }
    
}
