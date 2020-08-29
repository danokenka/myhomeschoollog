//
//  AboutUs.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        VStack {
             Spacer()
            Text("This app was made becuase homeschooling in FL required a log")
            Spacer()
            Text("This app will server as the log for audit")
             Spacer()
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
