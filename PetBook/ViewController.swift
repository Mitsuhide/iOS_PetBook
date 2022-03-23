//
//  ViewController.swift
//  PetBook
//
//  Created by OCTO-TTOP on 04/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet var friendsImageView: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerView()
        setupFriendsImageView()
    }
    
    func setupContainerView() {
        containerView.layer.cornerRadius = 20
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowRadius = 4
        containerView.layer.shadowOpacity = 0.75
        containerView.layer.shadowOffset = CGSize(width: 0, height: -3)
    }
    
    func setupFriendsImageView(){
        friendsImageView.forEach{friend in
            let friendFrame = friend.frame
            let corner = friendFrame.height / 2
            friend.layer.cornerRadius = corner
            friend.layer.borderColor = UIColor.gray.cgColor
            friend.layer.borderWidth = 2
        }
    }


}

