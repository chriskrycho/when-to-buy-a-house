# When to Buy Calculator

Figure out when to buy a house based on your current rent, 

## Terms in the equation:

- `desiredLoanTerm`
- `desiredPayoffDate`
- `currentAvailableToHousing`
- `increaseInAvailable`: [date/recurring, amount]
- `initialAmountSaved`
- `currentRent`
- `avgAnnualRentIncrease`
- `rentIncreaseMonth`
- `propertyTaxRate`
- `housePrice`
- `estimatedYearlyMaintenance`

A few notes: `desiredLoanTerm` and `desiredPayoffDate` are different because you may want to get a 30-year loan but want to pay it off in twenty years, and the loan you get looks different on that basis.

### Computed terms:

- `monthlyAvailableToSave`: the amount available any given month to spend on housing: `totalAvailableToHousing - (currentRent + <changes in rent>) - PMI - `
- `totalAmountSaved`: `initialAmountSaved + monthlyAvailableToSave`
- `downPayment`: `totalAmountSaved - closingCost - `
- `loanAmount`: `housePrice - downPayment`
- `PMI`: `(0.01 * loanAmount) / 12 if downPayment < (housePrice / 5) else 0`

## Basic loan formula:

```
M = P * ( J / (1 - ((1 + J) ** (-N))))
```

- `M`: payment amount
- `P`: principal
- `J`: effective interest rate
- `N`: total number of payments

```
J = I / 12
```

- `I`: annual interest rate expressed as a decimal

---

"Solve for x": what is x here? It's a *time* value: *when* to switch. But that is a function of the intersection of two curves.

Next question: what are those curves, actually?

The **goal** is to get to the point where `loanAmount` is low enough to make the payment date possible with the