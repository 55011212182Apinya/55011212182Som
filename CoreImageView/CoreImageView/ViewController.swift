//
//  ViewController.swift
//  CoreImageView
//
//  Created by Student on 10/3/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController {

    @IBOutlet weak var uIImageView: UIImageView!
    @IBOutlet weak var uISlider: UISlider!
    
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation:UIImageOrientation = .Up
    @IBAction func mountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        let newImage = UIImage( CGImage: cgimg, scale:1, orientation:orientation)
        self.imageView.image = newImage
        
    }
    @IBAction func save(sender: AnyObject) {
        let imageToSave = filter.outputImage
        let softwareContext = CIContext(ptions: [kCIContextUseSoftwareRenderer])
        let cgimg = softwareContext.createCGImage(imageToSave, fromRect:imageToSave.extent())
        let library = ALAssetsLibrary()
        library.writeImageToSavedPhotosAlbum(cgimg, metadata:imageToSave.properties(), completionBlock:nil)
        
    }
    
    @IBAction func imageView(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        self.presentedViewController
        
    }
    
    
      func ImagePickerController(picker: UIImagePickerController!,didFinishPickingMediaWithInfo info:NSDictionary!){
       self.dismissViewControllerAnimated(true, completion:nil)
        let gotImage = info[UIImagePickerControllerOriginalImage]as UIImage
        beginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        self.mountSliderValueChanged(amountSlider)
        
    }
    func logAllFilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties{
        let fltr = CIFilter(name: filtername as String)
        println(fltr.attributes())
     }
    }
    func oldPhoto(img: CIImage, withAmount  intensity: Float)->CIImage{
            //1
            let sepia = CIFilter(name: "CISepiaTond")
            sepia.setValue(img, forKey: kCIInputImageKey)
            sepia.setValue(intensity, forKey: "inputIntensity")
            //2
            let lighten = CIFilter(name: "CIRandomGenerator")
            let lighten = CIFilter(name: "CIColorContorols")
            lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
            lighten.setValue(1-intensity, forKey: "inputBrightness")
            lighten.setValue(0, forKey: "inputBrightness")
            //4
            let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
            //5
            let composite = CIFilter(name: "CIHardLightBlendMode")
            composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
            composite.setValue(croppedImage, forKey:kCIInputBackgroundImageKey)
            //6
            let vignette = CIFilter(name: "CIVignette")
            vignette.setValue(composite.outputImage, forKey: kCIInputBackgroundImageKey)
            vignette.setValue(intensity*2, forKey: "inputIntensity")
            vignette.setValue(intensity*30, forKey: "inputRadius")
            //7
            return vignette.outputImage
    }
    override func viewDidLoad() {
            super.viewDidLoad()
            let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "jpg")
            beginImage = CIImage(contentsOfURL: fileURL)
            filter = CIFilter(name: "CISepiaTone")
            filter.setValue(beginImage, forKey:kCIInputImageKey)
            filter.setValue(0.5, forKey:kCIInputIntensityKey)
            let outputImage = filter.outputImage
            context = CIContext(options: nil)
            let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
            let newImage = UIImage(CGImage:cgimg)
            self.imageView.image = newImage
            self.logAllFilters()
            
            
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

