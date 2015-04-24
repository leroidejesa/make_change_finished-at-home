class Fixnum
  define_method(:make_change) do
    original_change_amount = self
    numberofquarters = 0
    until numberofquarters == original_change_amount.div(25) do
      numberofquarters += 1
    end
    change_minus_quarters = original_change_amount - (numberofquarters*25)
    numberofdimes = 0
    until numberofdimes == change_minus_quarters.div(10) do
      numberofdimes += 1
    end
    change_minus_dimes = change_minus_quarters - (numberofdimes*10)
    numberofnickels = 0
    until numberofnickels == change_minus_dimes.div(5) do
      numberofnickels += 1
    end
    change_minus_nickels = change_minus_dimes - (numberofnickels*5)
    numberofpennies = 0
    until numberofpennies == change_minus_nickels.div(1) do
      numberofpennies += 1
    end
    prefinal_answer = []
    quarterarray = []
    dimesarray = []
    nickelsarray = []
    penniesarray = []
    if numberofquarters.>(1)
      quarterarray.push(numberofquarters)
      quarterarray.push("quarters")
      quarter_answer = quarterarray.join(" ")
      prefinal_answer.push(quarter_answer)
    elsif numberofquarters.==(1)
      prefinal_answer.push("1 quarter")
    end
    if numberofdimes.>(1)
      dimesarray.push(numberofdimes)
      dimesarray.push("dimes")
      dimes_answer = dimesarray.join(" ")
      prefinal_answer.push(dimes_answer)
    elsif numberofdimes.==(1)
      prefinal_answer.push("1 dime")
    end
    if numberofnickels.>(1)
      nickelsarray.push(numberofnickels)
      nickelsarray.push("nickels")
      nickels_answer = nickelsarray.join(" ")
      prefinal_answer.push(nickels_answer)
    elsif numberofnickels.==(1)
      prefinal_answer.push("1 nickel")
    end
    if numberofpennies.>(1)
      penniesarray.push(numberofpennies)
      penniesarray.push("pennies")
      pennies_answer = penniesarray.join(" ")
      prefinal_answer.push(pennies_answer)
    elsif numberofpennies.==(1)
      prefinal_answer.push("1 penny")
    end
  final_answer = prefinal_answer.join(", ")
  final_answer
  end
end
