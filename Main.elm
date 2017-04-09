module Main exposing (..)

{-| Calculate and visualize the time to switch from saving to buying a house.
-}


{-| Calculate a monthly payment using the standard formula.

The formula is given by:

    M =
        P * (J / (1 - (1 + J) ^- N))

where

  - `M`: payment amount
  - `P`: principal
  - `J`: effective interest rate
  - `N`: total number of payments

-}
monthlyPayment : Float -> Float -> Float -> Float
monthlyPayment p j n =
    p * (j / (1 - (1 + j) ^ -n))
