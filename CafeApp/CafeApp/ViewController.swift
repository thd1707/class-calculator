//
//  ViewController.swift
//  CafeApp
//
//  Created by TY on 11/08/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var cafeImageView: UITableView!
    
    @IBAction func detailButton(_ sender: Any) {
    }
    
    let cafes = [
        ("Café A", UIImage(named: "cafeA")),
        ("Café B", UIImage(named: "cafeB")),
        ("Café C", UIImage(named: "cafeC"))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
               tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return cafes.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CafeCell", for: indexPath) as! CafeTableViewCell
            let cafe = cafes[indexPath.row]
            cell.cafeImageView.image = cafe.1
            cell.detailButton.tag = indexPath.row
            cell.detailButton.addTarget(self, action: #selector(navigateToDetail), for: .touchUpInside)
            return cell
        }
    @objc func navigateToDetail(_ sender: UIButton) {
        let cafeDetailVC = storyboard?.instantiateViewController(withIdentifier: "CafeDetailViewController") as! CafeDetailViewController
            cafeDetailVC.cafeName = cafes[sender.tag].0
            navigationController?.pushViewController(cafeDetailVC, animated: true)
        }
    
}

