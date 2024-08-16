//
//  Cafe1.swift
//  App Cafe
//
//  Created by TY on 15/08/2024.
//

import Foundation
class Cafe1ViewController: UIViewController {
    //phần này để kéo các IBOulets và lblabel
    
    override func viewDidLoad() {
            

            // Thiết lập tên quán
            cafeNameLbl.text = "Café A"

            // Thiết lập hình ảnh
            cafeImageView.image = UIImage(named: "cafeA")
            cafeImageView1.image = UIImage(named: "cafeA1")
            cafeImageView2.image = UIImage(named: "cafeA2")
            cafeImageView3.image = UIImage(named: "cafeA3")
            cafeImageView4.image = UIImage(named: "cafeA4")
            cafeImageView5.image = UIImage(named: "cafeA5")
        }
    }
}
