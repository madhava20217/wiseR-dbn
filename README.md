# wiseR-dbn
Structure learning offers an explainable, expressive and versatile approach to causal and mechanistic modeling of complex biological data. We present wiseR, an open source application for learning, evaluating and deploying robust causal graphical models using graph neural networks and Bayesian networks.

An example use of this package is to learn the best policy that will minimize bad patient-outcomes from a complex multivariate dataset where variables may be expected to have interaction among diseases and physiology. The nature and strength of these interactions is learned in the structure-learning step and these are quantified using inference-learning. The user can then set utility of a particular outcome, e.g. setting high preference for zero episodes of sepsis in the ICU and infer the best possible combination of actions that will minimize the probability of sepsis in the given setting. 

The wiseR-dbn packages goes a step further than the original release: allowing for methods to use dynamic Bayesian networks by the means of data folding. It automatically blacklists edges going from chronologically later nodes to earlier nodes and spares user effort.

To download wiseR:
- The CRAN release of the package can be installed by running install.packages("wiseR") and the development version can be installed by running devtools::install_github("madhava20217/wiseR")
- Authors:
  - Shubham Maheshwari (shubham14101@iiitd.ac.in)
  - Prashasti Agarwal (prashasti19075@iiitd.ac.in)
  - Madhava Krishna (madhava20217@iiitd.ac.in)
  - Dr. Tavpritesh Sethi (tavpriteshsethi@iiitd.ac.in)

The current package is the addition of folding and construction of Dynamic Bayesian Networks to the already existing wiseR package. 
The current package wiseR-dbn can be downloaded and used using the following steps.
- Make sure you have R installed on your system.
- Install R Studio
- Use the R Terminal to execute the following:
```
install.packages('devtools')
install.packages('shiny')
library('shiny')
library('devtools')
devtools::install_github("madhava20217/wiseR-dbn")
wiseR::wiser()
```
A browser window should open up running the wiseR interface. 
Have fun exploring. :)
