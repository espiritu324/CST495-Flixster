//
//  MoviesDetailsViewController.swift
//  IHateNetchicks
//
//  Created by David Espiritu on 2/5/20.
//  Copyright © 2020 Noah Thompson. All rights reserved.
//

import UIKit
import Alamofire
class MoviesDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie["title"])
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterpath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterpath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
     
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdrop.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
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
