//
//  FindViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/02/28.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbl_viewlist: UITableView!
    
    var items = [Dictionary<String, String>]()
    var idx = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        // リストの件数を返す
        return  items.count
    }
    
    // セルをitemsから設定する処理
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")!
        cell.textLabel?.text = items[indexPath.row]["name"]!
        cell.detailTextLabel?.text = items[indexPath.row]["detail"]
        return cell;
    }
    
    // セルをクリックした時に発生するイベント
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        idx = indexPath.row
        performSegueWithIdentifier("page1", sender: self)
        
    }
    
    // 追加ボタン押下
    @IBAction func btn_pushAdd(sender: AnyObject) {
        idx = -1
        performSegueWithIdentifier("page1", sender: self)
    }
    
    // 画面遷移時にセグエにより処理を切り替え
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "page1" {
            // ViewDetailControllerへ遷移する際、値を渡す
            let viewDetailController: ViewDetailController = segue.destinationViewController as ViewDetailController
            
            viewDetailController._key = idx
            if idx != -1 {
                viewDetailController._data1 = items[idx]["name"]!
                viewDetailController._data2 = items[idx]["detail"]!
            }
            
        }
        
    }
    
    // 設定ボタン押下時のメソッド
    @IBAction func unWindows(segue: UIStoryboardSegue){
        if segue.identifier == "page2" {
            // 遷移元のControllerを取得
            let viewDetailController: ViewDetailController = segue.sourceViewController as ViewDetailController
            
            // 画面にデータを設定
            var _k = viewDetailController._key
            var _d1 = viewDetailController.txt_data1.text
            var _d2 = viewDetailController.txt_data2.text
            
            if _d1 == "" && _d2 == "" {
                if _k != -1 {
                    items.removeAtIndex(_k)
                }
                
            }else{
                if _k == -1 {
                    // 先頭に追加
                    items.insert([
                        "name": _d1,
                        "detail": _d2
                        ],
                        atIndex: 0
                    )
                    
                }else{
                    // 変更
                    items[_k]["name"] = _d1
                    items[_k]["detail"] = _d2
                }
            }
            
            // table再読み込み
            tbl_viewlist.reloadData()
            
        }
    }
    
    // 削除ボタン押下時のメソッド
    @IBAction func unWindowsDelete(segue: UIStoryboardSegue){
        if segue.identifier == "page2_2" {
            // 遷移元のControllerを取得
            let viewDetailController: ViewDetailController = segue.sourceViewController as ViewDetailController
            
            // 画面にデータを設定
            var _k = viewDetailController._key
            
            if _k != -1 {
                // 指定のデータを削除
                items.removeAtIndex(_k)
            }
            
            // table再読み込み
            tbl_viewlist.reloadData()
            
        }
    }
    
    
}
}
