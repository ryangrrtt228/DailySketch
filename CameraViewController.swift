//
//  CameraViewController.swift
//  DailySketchApp
//
//  Created by Batman on 3/24/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var PhotoLibraryButton: UIButton!
    
    @IBOutlet weak var CameraButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func PhotoLibraryAction(sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        presentViewController(picker, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func CameraActionButton(sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion: nil)
        
        
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage;dismissViewControllerAnimated(true, completion: nil)
    }
    
    func UIImageWriteToSavedPhotosAlbum(image: UIImage, completionTarget: AnyObject?, CompletionSelector: Selector, contextInfo: UnsafeMutablePointer<Void>){
        
        func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafePointer<Void>){
            if error == nil {
                let ac = UIAlertController(title: "Saved!", message: "Your sketch is saved to your photos ", preferredStyle: .Alert)
                ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                presentViewController(ac, animated: true, completion: nil)
            }else{
                let ac = UIAlertController(title: "Save Error", message: error?.localizedDescription, preferredStyle: .Alert)
                ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                presentViewController(ac, animated: true, completion: nil)
                
                
                
                
            }
            
        }
    }
    
}

    

