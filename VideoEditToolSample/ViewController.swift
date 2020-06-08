//
//  ViewController.swift
//  VideoEditToolSample
//
//  Created by SuperDev on 08.06.2020.
//  Copyright © 2020 SuperDev. All rights reserved.
//

import UIKit
import VideoEditorSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showVideoEditor(_ sender: UIButton) {
        let video = Video(url: Bundle.main.url(forResource: "sample_video", withExtension: "mp4")!)

        let videoEditViewController = VideoEditViewController(videoAsset: video)
        videoEditViewController.delegate = self

        present(videoEditViewController, animated: true, completion: nil)
    }
}

extension ViewController: VideoEditViewControllerDelegate {
    func videoEditViewController(_ videoEditViewController: VideoEditViewController, didFinishWithVideoAt url: URL?) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func videoEditViewControllerDidFailToGenerateVideo(_ videoEditViewController: VideoEditViewController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func videoEditViewControllerDidCancel(_ videoEditViewController: VideoEditViewController) {
        self.dismiss(animated: true, completion: nil)
    }
}

