//
//  UploadPhotoView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct UploadPhotoView: View {
    var body: some View {
        
        
        VStack {
            Spacer()
            Text("Welcome to the photo Uploader")
            Spacer()
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Upload Photo")
                }
            }
            Spacer()
            Text("Upload your photos here")
            Spacer()
        }
        
        
        
    }
}

struct UploadPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPhotoView()
    }
}
