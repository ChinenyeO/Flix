//
//  MovieGrindViewController.swift
//  Flix
//
//  Created by chinenye ogbuchiekwe on 4/22/19.
//  Copyright © 2019 chinenye ogbuchiekwe. All rights reserved.
//

import UIKit

class MovieGrindViewController: UIViewController {

    var movies = [[ String:Any ]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:
"https://api.themoviedb.org/3/movie/{movie_id}/similar?api_key=<<api_key>>&language=en-US&page=1")!
        
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                
                
                self.movies = dataDictionary["results"] as! [[String:Any]]
                

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
