//
//  PageViewController.swift
//  InterfacingWithUIKit
//
//  Created by 郑光龙 on 2020/3/1.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI
import UIKit
struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    @Binding var currentPage: Int
    
// makeCoordinator 会在makeUIViewController之前调用，因此在makeUIViewController 方法中可以访问 Coordinator
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
//    swiftUI调用一次该方法当PageViewController准备好显示view的时候，然后管理他的生命周期
    func makeUIViewController(context: Context) ->UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([controllers[currentPage]], direction: .forward, animated: true)
    }
    
    
//    You can use this coordinator to implement common Cocoa patterns, such as delegates, data sources, and responding to user events via target-action.
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        var parent : PageViewController
        init(_ pageViewController :PageViewController) {
            self.parent = pageViewController
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.firstIndex(of: viewController) else {
                return nil
            }
            
            if index == 0 {
                return parent.controllers.last
            }
            
            return parent.controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = parent.controllers.lastIndex(of: viewController) else {
                return nil
            }
            
            if index + 1 == parent.controllers.count {
                return parent.controllers.first
            }
            
            return parent.controllers[index + 1]
        }
        
        
//        pageViewcontroller 始终展示控制器数组的第一个元素，当往左划或 右滑时把datasource返回的controller插入到数组的第一项
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            
            if completed,
                let visibleViewController = pageViewController.viewControllers?.first,
                let index = parent.controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index;
            }
            
        }
    }
}


