 //
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by chinenye ogbuchiekwe on 4/21/19.
//  Copyright © 2019 chinenye ogbuchiekwe. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    var movie  : [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: baseUrl + posterPath)
        
        let backdropPath = movie["backdrop_path"] as! String
        
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        posterImage.af_setImage(withURL: posterUrl!)
        backdropView.af_setImage(withURL: backdropUrl!)
        
  
        
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
