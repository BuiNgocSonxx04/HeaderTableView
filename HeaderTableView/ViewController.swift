//
//  ViewController.swift
//  SectionTableViewHeader
//
//  Created by son on 7/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    var dictionaries = [DictionnaryPage(firstLetter: "A", list: [Animal(name: "Ant", address: "Hà Nội")]),
                        DictionnaryPage(firstLetter: "B", list: [Animal(name: "Bat", address: "+ 1 uy tín cho dân chơi"),
                                                                 Animal(name: "Butterfly", address: "Đà Nẵng")]),
                        DictionnaryPage(firstLetter: "C", list: [Animal(name: "Cat", address: "Olympic Tokyo 2020"),
                                                                 Animal(name: "Camel", address: "cuộc chiến bắt đầu nóng rồi :3"),
                                                                 Animal(name: "Crab", address: "Các bạn share bài giúp mình nhé")]),
                        DictionnaryPage(firstLetter: "D", list: [Animal(name: "Dog", address: "aaa")]),
                        DictionnaryPage(firstLetter: "E", list: [Animal(name: "Eagle", address: "aaa")]),
                        DictionnaryPage(firstLetter: "F", list: [Animal(name: "Fish", address: "aaa")]),
                        DictionnaryPage(firstLetter: "G", list: [Animal(name: "Giraffe", address: "aaa"),
                                                                 Animal(name: "Goat", address: "aaa"),
                                                                 Animal(name: "Gorrila", address: "aaa")]),
                                                ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }
    
    func initView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "AnimalTableViewCell", bundle: nil), forCellReuseIdentifier: "AnimalTableViewCell")
        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCell")
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.dictionaries.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dictionaries[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let  cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell  {
            
            cell.animal = self.dictionaries[indexPath.section].list[indexPath.row]
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //MARK:- Header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
        headerCell.frame = headerView.bounds
        headerCell.lblName.text = dictionaries[section].firstLetter
        headerView.addSubview(headerCell)
        return headerView
    }

}
