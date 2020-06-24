//
//  MusicansView.swift
//  BiographyApp
//
//  Created by Wisnu Anggara on 22/06/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import SwiftUI

struct MusicansView : View {
    
    var body: some View{
        
        VStack{
            
            Text("Musicans")
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

struct MusicansView_Previews: PreviewProvider {
    static var previews: some View {
        MusicansView()
    }
}
