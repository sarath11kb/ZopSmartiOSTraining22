class User {
	var uid: Int
	
	init(uid: Int) {
		self.uid = uid
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

class PremiumUser:User,UserBenefits {

	func premiumBenefits() {
	print("Hi premium")
	}

}


var u1: PremiumUser = PremiumUser(uid: 0)
var u2: RegularUser = RegularUser(uid: 0)
u1.premiumBenefits()
u1.regularBenefits()

u2.regularBenefits()
u2.premiumBenefits()
