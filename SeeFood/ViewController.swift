//
//  ViewController.swift
//  SeeFood
//
//  Created by Anthony Campbell on 1/12/19.
//  Copyright © 2019 Anthony Campbell. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickerImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickerImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }

    @IBAction func cameraTapped(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
    }
    
}

