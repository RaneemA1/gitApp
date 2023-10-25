//
//  My_List.swift
//  ViewRaneem
//
//  Created by ٍٍRaneem A on 10/04/1445 AH.
//

import SwiftUI

struct My_List: View {

    var image : Image
    var title : String
    var color : Color
    
    var body: some View {
            
            HStack(spacing: 20){
            
                image
                    
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50,height: 50)
                    .foregroundColor(color)
                   
                Text(title)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                })
            }
            
            Divider()
                .foregroundColor(.white)
                .padding(.leading,35)

    }
}

#Preview {
    My_List(image: Image(systemName: "bubble"), title: "fjh", color: .black)
}
