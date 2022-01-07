class UserService {
    //base class
   
    var firstName: String
    var lastName: String
    var age: Int
    var email: String
    
    init(firstName: String, lastName: String, age: Int, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
    }
}

protocol UserBenefits {
    //benefits for regular and premium users
   
    func playVideo()
    func pauseVideo()
    func getFullScreen()
    func nextVideo()
    func previousVideo()
   
    func adFreeVideo()
    func backgroundPlay()
    func watchOffline()
    func listenedToOnYouTubeMusic()
}

extension UserBenefits {
    //extension for protocol
   
    func playVideo() {
       print("Video is played.")
    }
    
    func pauseVideo() {
       print("Video is paused.")
    }
    
    func getFullScreen() {
       print("Switched to full screen.")
    }
    
    func nextVideo() {
       print("Next video is played.")
    }
    
    func previousVideo() {
       print("Previous video is played.")
    }
   
    func adFreeVideo() {
       
    }
    
    func backgroundPlay() {
       
    }
    
    func watchOffline() {
       
    }
    
    func listenedToOnYouTubeMusic() {
       
    }
}

class RegularUser: UserService, UserBenefits {
    //extended class for regular user
   
}

class PremiumUser: UserService, UserBenefits {
    //extended class for premium user
    //Extra Benefits: Ad-free video, Background play, Listened to on YouTube Music, Videos watched offline
   
    func adFreeVideo() {
       print("You have now got ad-free streaming. This is a premium feature.")
    }
    
    func backgroundPlay() {
       print("You can play videos in the background. This is a premium feature.")
    }
    
    func watchOffline() {
       print("You can download and watch videos offline. This is a premium feature.")
    }
    
    func listenedToOnYouTubeMusic() {
       print("You can check if you have listened to the song on YouTube Music. This is a premium feature.")
    }
}

var regUser: RegularUser = RegularUser(firstName: "Mehak", lastName: "Bhatia", age: 21, email: "abc@xyz.com")
var preUser: PremiumUser = PremiumUser(firstName: "Kaz", lastName: "Brekker", age: 25, email: "def@xyz.com")

regUser.getFullScreen()
regUser.adFreeVideo()

preUser.adFreeVideo()

