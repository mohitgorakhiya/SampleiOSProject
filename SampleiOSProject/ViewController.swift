//
//  ViewController.swift
//  OpenDocument
//
//  Created by Mohit Gorakhiya on 4/8/19.
//  Copyright © 2019 Mohit Gorakhiya. All rights reserved.
//

import UIKit
import QuickLook

class ViewController: UIViewController, QLPreviewControllerDataSource, UIDocumentInteractionControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var label: UILabel!
    var documentController : UIDocumentInteractionController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sample"
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
    }
    @IBAction func OpenDocument(_ sender: UIButton)
    {
//        if let url = URL(string: "tel://9426126889"), UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url)
//        }
        
//        let transition: CATransition = CATransition()
//        transition.duration = 0.3
//        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
//        transition.type = CATransitionType.fade
//        self.navigationController!.view.layer.add(transition, forKey: nil)
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        self.navigationController?.pushViewController(vc, animated: true)
        
//        if (UIApplication.shared.canOpenURL(URL.init(string: "comgooglemaps://")!)) {
//            UIApplication.shared.open(URL.init(string: "comgooglemaps://?q=Steamers+Lane+Santa+Cruz")!)
//
//            return
//        } else {
//            NSLog("Can't use Google Maps");
//        }
//
//        //Apple Maps
//
//        if (UIApplication.shared.canOpenURL(NSURL(string:"http://maps.apple.com")! as URL)) {
//            UIApplication.shared.open(NSURL(string:
//                "http://maps.apple.com/?daddr=San+Francisco,+CA&saddr=cupertino)")! as URL)
//
//        } else {
//            NSLog("Can't use Apple Maps");
//        }
        
//        let cameraPicker = UIImagePickerController()
//        cameraPicker.delegate = self
//        cameraPicker.sourceType = .photoLibrary
//        cameraPicker.allowsEditing = true
//        
//        present(cameraPicker, animated: true)
//        let previewController = QLPreviewController()
//        previewController.dataSource = self
//        present(previewController, animated: true)
//        let fileStr = Bundle.main.path(forResource: "Trackertouchevent", ofType: "rtf")
//        let fileURL = URL.init(fileURLWithPath: fileStr!)
//        documentController = UIDocumentInteractionController.init(url: fileURL)
////        documentController.presentOptionsMenu(from: sender.frame, in: self.view, animated: true)
//        documentController.delegate = self
//        documentController.presentPreview(animated: true)
//        print(label!)
//        label.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi * 3/2))
//        print(label!)
    }
    
    func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController {
        return self
    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let url = Bundle.main.url(forResource: "Trackertouchevent", withExtension: "rtf") else {
            fatalError("Could not load \(index).pdf")
        }
        
        return url as QLPreviewItem
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
