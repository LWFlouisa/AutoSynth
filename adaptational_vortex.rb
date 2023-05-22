def create_rulesets
  row = 0 ## The value of row is 0.

  ## The directory knwon_ruleset is _ruleset/rules.txt
  File.readlines("_ruleset/rules.txt")

  ### Values of the individual rows, as Ruby counts from zero.
  rule_1 = row + 1
  rule_2 = row + 2
  rule_3 = row + 3
  rule_4 = row + 4
  rule_5 = row + 5
  rule_6 = row + 6
  rule_7 = row + 7
  rule_8 = row + 8
  rule_9 = row + 9

  ### Creation of the actual rulesets.
  ruleset_1 = "#{rule1}
#{rule2}
#{rule3}
#{rule4}
#{rule5}
#{rule6}
#{rule7}
#{rule8}
#{rule9}"

  ruleset_2 = "#{rule9}
#{rule1}
#{rule2}
#{rule3}
#{rule4}
#{rule5}
#{rule6}
#{rule7}
#{rule8}"

  ruleset_3 = "#{rule8}
#{rule9}
#{rule1}
#{rule2}
#{rule3}
#{rule4}
#{rule5}
#{rule6}
#{rule7}"

  ruleset_4 = "#{rule7}
#{rule8}
#{rule9}
#{rule1}
#{rule2}
#{rule3}
#{rule4}
#{rule5}
#{rule6}"

  ruleset_5 = "#{rule6}
#{rule7}
#{rule8}
#{rule9}
#{rule1}
#{rule2}
#{rule3}
#{rule4}
#{rule5}"

  ruleset_6 = "#{rule5}
#{rule6}
#{rule7}
#{rule8}
#{rule9}
#{rule1}
#{rule2}
#{rule3}
#{rule4}"

  ruleset_7 = "#{rule4}
#{rule5}
#{rule6}
#{rule7}
#{rule8}
#{rule9}
#{rule1}
#{rule2}
#{rule3}"

  ruleset_8 = "#{rule3}
#{rule4}
#{rule5}
#{rule6}
#{rule7}
#{rule8}
#{rule9}
#{rule1}
#{rule2}"

  ruleset_9 = "#{rule2}
#{rule3}
#{rule4}
#{rule5}
#{rule6}
#{rule7}
#{rule8}
#{rule9}
#{rule1}"

  open("_adaptation/ruleset_shift1.txt", "w") { |f|
    f.puts ruleset_1
  }

  open("_adaptation/ruleset_shift2.txt", "w") { |f|
    f.puts ruleset_2
  }

  open("_adaptation/ruleset_shift3.txt", "w") { |f|
    f.puts ruleset_3
  }

  open("_adaptation/ruleset_shift4.txt", "w") { |f|
    f.puts ruleset_4
  }

  open("_adaptation/ruleset_shift5.txt", "w") { |f|
    f.puts ruleset_5
  }

  open("_adaptation/ruleset_shift6.txt", "w") { |f|
    f.puts ruleset_6
  }

  open("_adaptation/ruleset_shift7.txt", "w") { |f|
    f.puts ruleset_7
  }

  open("_adaptation/ruleset_shift8.txt", "w") { |f|
    f.puts ruleset_8
  }

  open("_adaptation/ruleset_shift9.txt", "w") { |f|
    f.puts ruleset_9
  }
end

def adaptation_vortex
  ## Create new sound_file with new ruleset permutation.
  ruleset_choice = File.read("_rulesets/choice/value.txt").to_s.to_i

  mutation1 = File.readlines("_adaptation/ruleset_shift1.txt")
  mutation2 = File.readlines("_adaptation/ruleset_shift2.txt")
  mutation3 = File.readlines("_adaptation/ruleset_shift3.txt")
  mutation4 = File.readlines("_adaptation/ruleset_shift4.txt")
  mutation5 = File.readlines("_adaptation/ruleset_shift5.txt")
  mutation6 = File.readlines("_adaptation/ruleset_shift6.txt")
  mutation7 = File.readlines("_adaptation/ruleset_shift7.txt")
  mutation8 = File.readlines("_adaptation/ruleset_shift8.txt")
  mutation9 = File.readlines("_adaptation/ruleset_shift9.txt")

  ruleset_list = [
    mutation1, mutation2, mutation3,
    mutation4, mutation5, mutation6,
    mutation7, mutation8, mutation9,
  ]

  chosen_ruleset = ruleset_list[ruleset_choice]

  ## These are the rows.
  vortex_row_1 = 0
  vortex_row_2 = 1
  vortex_row_4 = 3
  vortex_row_8 = 7
  vortex_row_7 = 6
  vortex_row_5 = 4

  ## Performs standard subroutines.
  system("#{chosen_ruleset[vortex_row_1]}")
  system("#{chosen_ruleset[vortex_row_2]}")
  system("#{chosen_ruleset[vortex_row_4]}")
  system("#{chosen_ruleset[vortex_row_8]}")
  system("#{chosen_ruleset[vortex_row_7]}")
  system("#{chosen_ruleset[vortex_row_5]}")
  system("#{chosen_ruleset[vortex_row_1]}")

  ruleset_choice = ruleset_choice + 1

  open("_rulesets/choice/value.txt", "w") { |f|
    ruleset_choice = ruleset_choice + 1

    f.puts ruleset_choice
  }
end

## Only create new rulesets if set to true.
rule_creation = true

if rule_creation == true
  create_rulesets
  adaptation_vortex
else
  adaptation_vortex
end
