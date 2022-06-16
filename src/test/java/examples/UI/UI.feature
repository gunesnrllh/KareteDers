
Feature: Make Appointment

  Scenario: Login Scenario
    Given driver "https://open.spotify.com/"
    * maximize()
    And click("//div[@class='ButtonInner-sc-14ud5tc-0 iebPZv encore-inverted-light-set']")
    * delay(1000)
    And input('#login-username','nurullah.gunes@testinium.com')
    * delay(1000)
    And input('#login-password','1234qwer_')
    * delay(1000)
    And click('.ButtonInner-sc-14ud5tc-0.lbsIMA.encore-bright-accent-set')
    * delay(5000)
    And click('.IPVjkkhh06nan7aZK7Bx')
    * delay(5000)
    And click(".AINMAUImkAYJd4ertQxy")
    * delay(5000)
    And click('.o4KVKZmeHsoRZ2Ltl078')
    * delay(5000)
    And input('.RLzMolC7kIdp65LyfQPb','Mentorlabs')
    * delay(1000)
    And click('.Button-qlcn5g-0.jvEinx')
    * delay(1000)
    And input('.Type__TypeElement-goli3j-0.ebHsEf.l42JW4EP_5CU1Ba7jYIc','Daft Punk')
    * delay(1000)
    * scroll('.gkgL9fB_pyDL75m9HKdu')
    * delay(5000)
    * click("//button[@class='Button-y0gtbx-0 jjUWAm']").parent.firstChild
    * delay(1000)