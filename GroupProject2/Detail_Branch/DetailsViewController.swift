//
//  DetailsViewController.swift
//  Group_Project
//
//  Created by Baxva Jakeli on 05.07.21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var contentText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
        setUpImage(with: authorImage)
    }

}




extension DetailsViewController {
    func setUpNavigation() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(alert))
    }
    
    @objc func alert() {
        let alert = UIAlertController(title: "Sorry", message: "Coming Soon", preferredStyle: .alert)
        let Ok = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(Ok)
        present(alert, animated: true)
    }
    
    func setUpImage(with image: UIImageView) {
        image.layer.cornerRadius = image.bounds.height / 2
    }
}
