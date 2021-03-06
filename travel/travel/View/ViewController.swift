//
//  ViewController.swift
//  travel
//
//  Created by João Luis Ferreira Ramos Junior on 29/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var travelTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
    
    func configureTableView() {
        travelTableView.register(UINib(nibName: "TravelTableViewCell", bundle: nil), forCellReuseIdentifier: "TravelTableViewCell")
        travelTableView.dataSource = self
        travelTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let travelCell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell") as? TravelTableViewCell else {
            fatalError("Error to create table view cell")
        }
        return travelCell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configureView()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
