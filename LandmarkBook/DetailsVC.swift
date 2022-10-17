//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Ali Berkay BERBER on 17.10.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkDetails: UILabel!
    
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    var selectedLandmarkDetails = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        landmarkDetails.text = selectedLandmarkDetails
        
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
