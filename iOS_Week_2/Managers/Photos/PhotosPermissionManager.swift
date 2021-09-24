//
//  PermissionManager.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import Foundation
import PhotosUI
import Combine
import SwiftUI

typealias BooleanBlock = (Bool) -> Void

class PhotosPermissionManager: NSObject, PhotosPermisionProtocol, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    private let photosStatusSubject = PassthroughSubject<Bool, Never>()
    
    private let pickerController = UIImagePickerController()
    private var selectedImage: ((Image) -> Void)?
    
    override init() {
        super.init()
        pickerController.delegate = self
    }
    
    func subscribePhotosStatusObject(completion: @escaping BooleanBlock) -> AnyCancellable {
        return photosStatusSubject.sink(receiveValue: completion)
    }
    
    func requestPermission(completion: @escaping VoidBlock) {
        print("\(#function) : PhotosPermissionManager")
        
        PHPhotoLibrary.requestAuthorization { status in
            print("photo access status : \(status)")
            self.handleRequestAuthorization(with: status)
            completion()
        }
    }
    
    func checkPhotosPermission() -> Bool {
        let status = PHPhotoLibrary.authorizationStatus()
        return (status == .authorized || status == .limited)
    }
    
    func selectPhoto(completion: @escaping (Image) -> Void) {
        selectedImage = completion
        guard let topMostViewController = UIApplication.topViewController() else { return }
        topMostViewController.present(pickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let tempImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        selectedImage?(Image(uiImage: tempImage))
        pickerController.dismiss(animated: true, completion: nil)
    }
    
    func getPermissionRequestViewData(with pozitifCompletion: @escaping VoidBlock, with negativeCompletion: @escaping VoidBlock) -> PermissionRequestViewData {
        return PermissionRequestViewData(image: PermissionImages.notif.value, infoViewData: InfoViewData(title: "Photos Permission", subTitle: "Would you please give us permission to reach out your galery."), actionComponentData: ActionComponentData(positifButton: ActionButtonViewData(title: "OK", type: .filled(.bright)).setActionListener(by: pozitifCompletion), negativeButton: ActionButtonViewData(title: "NOT NOW", type: .outlined(.bright)).setActionListener(by: negativeCompletion)))
    }
    
    // MARK: - Private Methods -
    private func handleRequestAuthorization(with value: PHAuthorizationStatus) {
        photosStatusSubject.send((value == .authorized || value == .limited))
    }
    
    
}
