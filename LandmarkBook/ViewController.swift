//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ali Berkay BERBER on 15.10.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var landmarkDetails = [String]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkDetails = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("Manavgat")
        landmarkNames.append("Izmir")
        landmarkNames.append("Istanbul")
        landmarkNames.append("Denizli")
        landmarkNames.append("Paris")
        
        
        landmarkImages.append(UIImage(named: "manavgat.jpeg")!)
        landmarkImages.append(UIImage(named: "izmir.jpeg")!)
        landmarkImages.append(UIImage(named: "istanbul.jpeg")!)
        landmarkImages.append(UIImage(named: "denizli.jpeg")!)
        landmarkImages.append(UIImage(named: "paris.jpeg")!)
        
        landmarkDetails.append("Dünyanın En iyi şelalesi")
        landmarkDetails.append("Dünyanın en büyük nasrettin hocası heykeli")
        landmarkDetails.append("Polat ve Elifin meeting yeri")
        landmarkDetails.append("Dünyanın en iyi giyimli horozu")
        landmarkDetails.append("Öyle metal bir kule")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        chosenLandmarkDetails = landmarkDetails[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            destinationVC.selectedLandmarkDetails = chosenLandmarkDetails
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}

