//
//  ViewController.swift
//  EbookNews
//
//  Created by HikaruTakahashi on 2016/01/24.
//  Copyright © 2016年 HikaruTakahashi. All rights reserved.
//

import UIKit
import PagingMenuController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1ページ目で表示させるコントローラーを指定する
        let page1 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenu1ViewController") as! PagingMenu1ViewController
        page1.title = "1ページ目"
        
        // 2ページ目で表示させるコントローラーを指定する
        let page2 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenu2ViewController") as! PagingMenu2ViewController
        page2.title = "2ページ目"
        
        // 3ページ目で表示させるコントローラーを指定する
        let page3 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenu3ViewController") as! PagingMenu3ViewController
        page3.title = "3ページ目"
        let viewControllers = [page1, page2, page3]
        
        // 表示オプション
        let options = PagingMenuOptions()   //オプションをインスタンス化
        
        // 最初に表示させるページ番号
        options.defaultPage = 0
        
        // スワイプでページ間を移動させるか
        options.scrollEnabled = true
        
        // メニューバーの背景色
        options.backgroundColor = UIColor.whiteColor()
        
        // 選択中のメニューバーの背景色
        options.selectedBackgroundColor = UIColor.whiteColor()
        
        // メニューのフォントサイズ
        options.font = UIFont.systemFontOfSize(14)
        
        // 選択中のメニューのフォントサイズ
        options.selectedFont = UIFont.systemFontOfSize(14)
        
        // メニューの位置
        options.menuPosition = .Top
        
        // メニューの高さ
        options.menuHeight = 44
        
        // メニューのマージン
        options.menuItemMargin = 5
        
        // ページ移動をするときのアニメーションスピード
        // 数値が低い方が早く動く
        options.animationDuration = 0.03
        
        // 選択中のメニューの下線の色
        options.menuItemMode = .Underline(height: 3, color: UIColor.blackColor(), horizontalPadding: 0, verticalPadding: 0)
        
        // メニューの表示のされ方
        options.menuDisplayMode = .SegmentedControl
        
        let pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options)
        pagingMenuController.view.frame.origin.y += 20
        pagingMenuController.view.frame.size.height -= 20
        
        self.addChildViewController(pagingMenuController)
        self.view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

