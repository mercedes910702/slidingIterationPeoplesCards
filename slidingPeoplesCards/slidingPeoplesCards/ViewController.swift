//
//  ViewController.swift
//  slidingPeoplesCards
//
//  Created by Mercedes Moore on 7/20/22.
//

import UIKit
import CardSlider

struct Item: CardSliderItem{
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}


class ViewController: UIViewController, CardSliderDataSource {

    

    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Card One
        data.append(Item(image: UIImage(systemName: "bookmark")!, rating: nil, title: "Bookmarks", subtitle: "Get excited about bookmarks", description: "You can read books"))
        
        //Card Two
        data.append(Item(image: UIImage(systemName: "bookmark")!, rating: nil, title: "Bookmarks", subtitle: "Get excited about bookmarks", description: "You can read books"))
        
        //Card Three
        data.append(Item(image: UIImage(systemName: "bookmark")!, rating: nil, title: "Bookmarks", subtitle: "Get excited about bookmarks", description: "You can read books"))
        myButton.backgroundColor = .white
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton(){
        //Show card slider
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }
    
    //Returns the specific card slider item
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    //Returns number of cards
    func numberOfItems() -> Int {
        return data.count
    }
}

