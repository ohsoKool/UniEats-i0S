//
//  UserAvatatView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI
struct UserAvatarView: View{
    var userAddresses:[String] = ["123 Oak Street, Anytown, USA 12345","456 Maple Avenue, Smallville, USA 67890","789 Pine Lane, Bigcity, USA 10112","101 Elm Court, Hamlet, USA 34567"]
    var body: some View{
        VStack{
            Text("Add or Modify your addresses")
            List(userAddresses, id:\.self){
                address in
                HStack(spacing : 8){
                    Image(systemName: "pencil")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15,height: 20)
                        .padding(3)
                    //                    .border(.black)
                    Text(address)
                        .font(.headline)
                        .frame(width: 280,alignment: .leading)
                        .padding()
                        .background(.gray.opacity(0.2))
                        .cornerRadius(16)
                    //                    .border(.blue)
                    
                }
                
            }
        }
    }
}
#Preview {
    UserAvatarView(userAddresses: ["123 Oak Street, Anytown, USA 12345","456 Maple Avenue, Smallville, USA 67890","789 Pine Lane, Bigcity, USA 10112","101 Elm Court, Hamlet, USA 34567"])
}
