Feature: code-breaker submits guess

  The user submits a password.  The cracker shows how many combinations.

  Scenario Outline: submit password
    Given the password has a "<strength>"
    When I submit a "<password>"
    Then the result should be its "<rank>"

    Scenarios: no password
      | strength | password | rank   |
      | weak     |          | weak   |

    Scenarios: weak password
      | strength | password | rank   |
      | weak     | brazil   | weak   |

    Scenarios: medium password
      | strength | password | rank   |
      | medium   | fl4kypie | medium |

    Scenarios: strong password
      | strength | password | rank   |
      | strong   | JIK%^3rk | strong |

