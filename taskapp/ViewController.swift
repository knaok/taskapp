//
//  ViewController.swift
//  taskapp
//
//  Created by Nao Kato on 2021/07/20.
//

import UIKit
import RealmSwift

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    //method to return the number fo cell
    func tableView(_ tableView: UITableView,numberOfRowsInSection section:Int) -> Int {
        return 0
    }

    // mothod to return contents of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    // method to exceute when selecting each cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    // method to inform the cell can be deleted
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle{
        return .delete
    }
    
    //method called when delete button is touched
    func tableView(_ tableView: UITableView, commit editStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        
    }
    
    //method excecuted when each cell is touched
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "cellSegue", sender: nil) //
    }
}
