# The time lagged effect problem on (un) truthful data

This repository contains the development of a statistical model based on a Poisson stochastic process with a Bayesian parameter estimation scheme through RStan.

This project firstly arose as a delivery for my course of Bayesian analysis during my Master's in Data Science, and became a conference proceeding after its acceptance in the [ICPR-Americas 2022](https://doi.org/10.1007/978-3-030-76310-7_23).

In this project, I studied the COVID-19 related dynamics where a person might be considered as healthy, infected, recovered or death. Thus, we formulate this as a Markov chain with a growing behaviour (because it was at the very beginning of the COVID-19 outbreak) through a Poisson process. In this regard, as information was understood as not confident enough, given the delay on the information recording, we used a time-lagged schema combining the actual data reported by the [Johns Hopkins University Center for Systems Science and Engineering](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series) with the information reported in the specialized literature.

After that, a discrete stochastic simulation is performed to test the results.

For an illustration of the project, the presentation I made is freely available [here](https://drive.google.com/file/d/1p0OL9jjyinC5v7zMhG51feoWu8qFiVn2/view).
