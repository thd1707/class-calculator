//
//  CafeTableViewCell.swift
//  CafeApp
//
//  Created by TY on 11/08/2024.
//

import UIKit

class CafeTableViewCell: UITableViewCell {
    @IBOutlet weak var cafeImageView: UIImageView!
        @IBOutlet weak var detailButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
class CafeDetailViewController: UIViewController {
    var cafeName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = cafeName
        // Hiển thị chi tiết của quán cà phê ở đây
    }
}
