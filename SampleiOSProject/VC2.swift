//
//  VC2.swift
//  OpenDocument
//
//  Created by Mohit Gorakhiya on 5/13/19.
//  Copyright © 2019 Mohit Gorakhiya. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage.init(named: "screen1")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
