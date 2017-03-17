//
//  ViewController.swift
//  RoomDemo
//
//  Created by zhoucan on 2017/3/17.
//  Copyright © 2017年 verfing. All rights reserved.
//

import UIKit
import SwiftyJSON




class LazyScrollViewCustomView: UIImageView,TMMuiLazyScrollViewCellProtocol {
    
    func mui_didEnter(withTimes times: UInt) {
        print("Did Enter With Times" + "\(times)")
    }
    
    func mui_prepareForReuse() {
        print("Prepare For Reuse")
    }
    
    func mui_afterGetView() {
        print("AfterGetView")
    }
    
    
}




class ViewController: UIViewController,TMMuiLazyScrollViewDataSource {

    
    var dataSources:Array<TMMuiRectModel> = [TMMuiRectModel]()
    var images:Array<String> = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let jsonPath = Bundle.main.path(forResource: "data", ofType: "json")
        
        let url = URL.init(fileURLWithPath: jsonPath!)
        
        let data = try! Data.init(contentsOf: url)
        
        
        
        let json = JSON.init(data: data)
        
        print(json)
        
        let Controls = json["Controls"].array
        
        for item in Controls! {
        
            let image = item["Image"].string
            let X = item["X"].int
            let Y = item["Y"].int
            let Width = item["Width"].int
            let Height = item["Height"].int
            
            let model = TMMuiRectModel.init()
            model.absoluteRect = CGRect.init(x: X!, y: Y!, width: Width!, height: Height!)
            dataSources.append(model)
            images.append(image!)
            
        }
        
        
        let scrollView = TMMuiLazyScrollView.init()
        scrollView.frame = self.view.bounds
        scrollView.dataSource = self
        self.view.addSubview(scrollView)
        
        
        scrollView.contentSize = CGSize.init(width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        
        scrollView.reloadData()
        
    }

    
    
    
    func numberOfItem(in scrollView: TMMuiLazyScrollView) -> UInt {
        
        return UInt(dataSources.count)
        
    }
    
    
    func scrollView(_ scrollView: TMMuiLazyScrollView, rectModelAt index: UInt) -> TMMuiRectModel {
        dataSources[Int(index)].muiID = String(index)
        return dataSources[Int(index)]
        
    }
    
    func scrollView(_ scrollView: TMMuiLazyScrollView, itemByMuiID muiID: String) -> UIView? {
        var imageV = scrollView.dequeueReusableItem(withIdentifier: "testView") as? LazyScrollViewCustomView
        let index = Int(muiID)
        if imageV == nil {
            
            let rect = dataSources[index!].absoluteRect
            imageV = LazyScrollViewCustomView.init(frame: rect)
            imageV?.reuseIdentifier = "testView"
        }
        
        
        imageV?.frame = dataSources[index!].absoluteRect
        scrollView.addSubview(imageV!)
        imageV?.image = UIImage.init(named: images[index!])
        return imageV
        
    }


}

