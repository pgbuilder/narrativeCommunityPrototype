import UIKit

class MyShelfController:UIViewController{
    
    //MARK: VARIABLES
    let myShelfPage = MyShelfPage()
    
    //MARK: OVERRIDES
    override func loadView(){
        super.loadView()
        self.view = myShelfPage
    }
    override func viewDidLoad() {
        myShelfPage.credBar.vipAchievement.populate(laurel: .GRAY, name: "VIP", value: "LVL 1")
        myShelfPage.credBar.karmaAchievement.populate(laurel: .GOLD, name: "karma", value: "21.3k")
        myShelfPage.credBar.chaptersAchievement.populate(laurel: .GRAY, name: "chapters read", value: "12")
        myShelfPage.credBar.followersAchievement.populate(laurel: .PLAT, name: "followers", value: "9999")
        myShelfPage.credBar.followButton.selected = false
        myShelfPage.credBar.followButton.addTarget(self, action: #selector(toggleFollow), forControlEvents: .TouchUpInside)
    }
    
    //MARK: FUNCTIONS
    func toggleFollow(){
        let followButton = myShelfPage.credBar.followButton
        followButton.selected = !followButton.selected
    }
}