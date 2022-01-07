class User {
	var uid: Int
	init() {
		uid=0

	}
	
}
protocol UserBenefits {
	func premiumBenefits()
	func regularBenefits()
}
extension UserBenefits {

	func premiumBenefits() {

	}
	func regularBenefits() {
		print("hi this is regular benefits")

	}
}

class RegularUser: User, UserBenefits {
	

}
class PremiumUser:User,UserBenefits{
	func premiumBenefits() {
	print("Hi premium")
	}

}


var u1: PremiumUser = PremiumUser()
var u2: RegularUser = RegularUser()
u1.premiumBenefits()
u1.regularBenefits()

u2.regularBenefits()
u2.premiumBenefits()
