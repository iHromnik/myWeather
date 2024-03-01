//
//  WeatherViewController.swift
//  myWeather
//
//  Created by iHRomnik on 14.02.2024.
//

import UIKit



class WeatherViewController: UIViewController {

    @IBOutlet weak var weekDayPicker: WeekDayPicker!
    @IBOutlet weak var collectionView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self

    }



//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//        return 10
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
//    
//        cell.weather.text = "30 C"
//        cell.time.text = "30.08.2017 18:00"
//    
//        return cell
//    }

}


extension WeatherViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! WeatherCell
        
                cell.weather.text = "30 C"
        cell.icon.image = UIImage(named: "sunny_temperature")
                cell.time.text = "30.08.2017 18:00"
        
                return cell
    }
    
    
}
