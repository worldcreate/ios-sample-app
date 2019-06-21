//
//  Sub1 Sub1ViewController.swift
//  HelloWorld
//
//  Created by matsumoto on 2019/06/07.
//  Copyright © 2019 zyyx. All rights reserved.
//

import UIKit

class Sub1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let TODO = ["HOGE", "FUGA"]
    
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var indicatorContainerView: UIView!
    @IBOutlet weak var myTableView: MyTableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TODO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        let label = cell.viewWithTag(10) as! UILabel
        label.text = TODO[indexPath.row]
        return cell
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPoint = scrollView.contentOffset;
        print("\(currentPoint.y)")

    }

    private let refreshControl = UIRefreshControl()
    
    @objc func refresh(sender: UIRefreshControl) {
        // ここに通信処理などデータフェッチの処理を書く
        // データフェッチが終わったらUIRefreshControl.endRefreshing()を呼ぶ必要がある
    }

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("will begin dragging")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("end dragging")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("viewController touch began")
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch end")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        (myTableView)?.viewController = self
        
        myTableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(Sub1ViewController.refresh(sender:)), for: .valueChanged)
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
