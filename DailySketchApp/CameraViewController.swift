//
//  CameraViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/24/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
   

    @IBOutlet weak var CameraButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    var didDisplayCamera: Bool = false
    
    @IBOutlet weak var BackButton: UIButton!
    
    
    override func viewWillAppear(animated: Bool) {
        
        if didDisplayCamera == false
        {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .Camera
            
            presentViewController(picker, animated: true, completion:nil)
            didDisplayCamera = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        didDisplayCamera = false
        self.prefersStatusBarHidden()
    }
            
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage;dismissViewControllerAnimated(true, completion: nil)
        if let image = ImageDisplay.image {
          UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            
        }
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true) { 
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    @IBAction func RetakeActionButton(sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion:nil)
        didDisplayCamera = true
        
        
    }
    
    @IBAction func ShareButtonTapped(sender: UIButton) {
        if let image = ImageDisplay.image
        {
            let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
    }
}

    

