import Foundation

class GameModel{
    func getProfile(userId:String) -> Profile {
        let profile = Profile()
        switch(userId){
        case "cass":
            profile.bgName = "bgCollege"
            profile.characterImageName = "cass"
            profile.username = "Pink-Haired Cass"
            profile.quote = "Allow myself to introduce my... shelf"
            profile.karma = 500
            profile.chaptersRead = 200
            profile.followers = 999
            profile.createdStoryIds = ["campfire", "kawataki"]
            profile.recommendedStoryIds = ["guy","demi","meanGirls","sundosia","bff","sorority"]
            profile.postImageNames = ["feedMovie", "feedSurvey", "feedRecommendation", "feedCapture"]
        case "max":
            profile.bgName = "bgCollege"
            profile.characterImageName = "max"
            profile.username = "Maximoose"
            profile.quote = "Tap the pencil icon to customize yourself!"
            profile.karma = 0
            profile.chaptersRead = 5
            profile.followers = 0
            profile.createdStoryIds = []
            profile.recommendedStoryIds = ["campfire"]
            profile.postImageNames = ["feedSurvey"]
        default:
            break
        }
        return profile
    }
}