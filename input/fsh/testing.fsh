Instance: SmokeTest
InstanceOf: TestPlan
Title: "Test plan for availability and functionality"

* scope = Reference(IHE.PDQm.server)
* status = #active
* category = #pretest //  #pnp
* purpose = "This test plan is intended to test the availability and basic functionality of the PDQm server using a generic REST client like Postman."
* testTools = """
### Client
* [Postman](https://www.postman.com)
* ...
* Newman

### Reporting tools


    """

* testCase[+]
  * sequence = 1
  * dependency
    * description = "None"
  * testRun[+]
    * narrative = "Setup the patients on the server"
    * script
      * language = #postman
      * sourceReference 
  * testRun[+]
    * narrative = "Query patient 1"
    * script
      * language = #postman
      * sourceReference 
  * testData[+]
    * type = #resource
    * content = Reference(PDQmPatient)
