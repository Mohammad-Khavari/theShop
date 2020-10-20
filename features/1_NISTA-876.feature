@NISTA-876
Feature: Endorsements management
	#This feature covers all the scenarios validating the businesses rules related to an endorsement.
	#
	# 
	#|Acceptance criteria|Story summary|Tested by|
	#|IDITS-665 – AC1
	# IDITS-665 – AC2|collection method for endorsement|NISTA-877
	#  |
	#|IDITS-2017 – AC1 : can perform an endorsement and charge/refund the customer
	# IDITS-2017 – AC2 : can perform policy cancellation and charge/refund the customer.
	# IDITS-2017 – AC3 : the invoice is open (not paid) and the customer asks for an endorsement
	# IDITS-2017 – AC4 : the invoice is open (not paid) and the customer asks to change the policyholder|Endorsement - Post invoice modification|IDITS-2017 – AC1  Tested by NISTA-877
	# IDITS-2017 – AC2 Tested by  NISTA-468
	# IDITS-2017 – AC3 Tested by  NISTA-468 
	# IDITS-2017 – AC4 Tested by  NISTA-468 
	#  
	#  |
	#|IDITS-1595-  perform an endorsement with premium impact for a future date beyond the current policy period|Endorsement action - max. date|NISTA-877|
	#|IDITS-241 – AC1: GIVEN I'm a front office agent WHEN I endorse a policy THEN I can choose a start date as today, future or a date in the past.
	# IDITS-241 – AC2: GIVEN I'm a back office agent WHEN I endorse a policy THEN I can choose a start date as today, future or a date in the past. 
	# IDITS-241 – AC3: GIVEN I'm a front office / back office agent WHEN I endorse a policy and choose en effective date as today or in the past THEN I get a warning message telling me that the endorsement will have a retroactive 
	#  |Backdated endorsement||NISTA-877
	#  
	# NISTA-891||
	#|IDITS-1606 – AC1: I do an endorsement Then I want to confirm the changes as a policy 
	# IDITS-1606 – AC2: I do an endorsement. Then I don't have the possibility to save it as proposal 
	# IDITS-1606 – AC3:  my customer rejects the endorsement. Then when I chose "reject" decision, the Reason field is defaulted to "Other" and the endorsement attempt is stored as an active proposal. 
	# IDITS-1606 – AC4:  I do an endorsement. Then I can complete the action without being obliged to select a reason neither at the beginning nor at decision level 
	# IDITS-1606 – AC5:  a perform an endorsement during the renewal period of the policy. Then I can perform the endorsement and I am not blocked|General Endorsement with premium impact + during renewal period|IDITS-1606 – AC1 Tested by NISTA-877 
	# IDITS-1606 – AC2  Tested by NISTA-877 
	# IDITS-1606 – AC3 Tested by NISTA-877,  NISTA-893
	# IDITS-1606 – AC4 Tested by NISTA-877
	# IDITS-1606 – AC5 Tested by See if can be tested
	#  
	#  
	#  |
	#
	# 

	
	@NISTA-1030
	Scenario Outline: Endorsement management ETI - <idScenario>
		'''
		<Description>
		'''
		Given a contact having a "TCS Livret ETI" policy with <indFam1> <coverArea1> <coverType1> <price1> options
		 When I create an endorsement with  <indFam2> <coverArea2> <coverType2> options
		 Then theproduct charge/refund amount to pay is <diffToPay>
		
		Examples: 
		
		  | idScenario    | Description | indFam1    | coverArea1 | coverType1 | price1 | indFam2    | coverArea2 | coverType2 | diffToPay  | 
		  | NISTA-877-IT1 |             | Individuel | World      | Standard   | CHF ?  | Individuel | Europe     | Standard   | CHF ?      | 
		  | NISTA-877-IT4 |             | Individuel | Europe     | Plus       | CHF ?  | Famille    | Europe     | Plus       | CHF -82.00 | 
		
		