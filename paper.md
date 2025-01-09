
---
title: "Credit Default Swaps with R"
tags:
- credit default swap
- pricing
- R package
date: "7 January 2025"
output: pdf_document
authors:
- name: Yanrong Song
  orcid: "0009-0003-5738-8384"
  email: yrsong129@gmail.com
  affiliation: 1
- name: Zijie Zhu
  email: zijie.miller.zhu@gmail.com
  affiliation: 1
- name: David Kane
  email: david.kane@gmail.com
  affiliation: 2
- name: Heidi Chen
  email: s.heidi.chen@gmail.com
  affiliation: 2
- name: Yuanchu Dang
  email: yuanchu.dang@gmail.com
  affiliation: 1
- name: Yang Lu
  email: yang.lu2014@gmail.com
  affiliation: 3
- name: Kanishka Malik
  email: kanishkamalik@gmail.com
  affiliation: 3
- name: Skylar Smith
  email: sws2@williams.edu
  affiliation: 3
bibliography: paper.bib
affiliations:
- name: Columbia University, United States
  index: 1
- name: Harvard University, United States
  index: 2
- name: Williams College, United States
  index: 3
---



# Summary

A credit default swap (CDS) is a bilateral agreement between two parties (the protection buyer and the protection seller) with respect to default by a third party. Over the past two decades, CDS have been one of the fastest growing parts of the financial markets. First, we explain the basics of CDS along with key concepts like coupon, spread, notional, recovery rate, upfront, probability of default and the ISDA Standard Model. Second, we introduce Markit and Bloomberg, the two primary sources for CDS data and analytics. Third, we describe the creditr \textbf{R} package, an open source tool which allows users to calculate information related to CDS.



# Statement of need

This paper explains the mechanics of credit default swaps (CDS), a type of \textbf{credit derivative} that, in exchange for payment, transfers \textbf{credit risk} from one group of investors to another. First, we introduce the concept of CDS with an analogy to housing insurance, and highlight that a CDS allows one party to purchase insurance against the default of a specific bond from another party. This insurance is usually called ``protection.'' We then introduce some simplified examples of one-period and two-period CDS in which a portfolio manager at Highbridge purchases protection from Citigroup. Many important concepts are introduced: \textbf{notional amount}, \textbf{coupon} and \textbf{spread}. We then explore complications that alter CDS pricing calculations, such as \textbf{interest rates}, \textbf{recovery rate}, \textbf{probability of default}, \textbf{accrued coupon} and \textbf{upfront payment}. Further complexity arises from allowing for a non-constant probability of default and non-constant interest rates. We then consider the N-period CDS as a more accurate model of real transactions. Further complications such as calculus for the continuous case will be introduced, as a culmination for this theoretical section.
  
The next section focuses on real world data from Bloomberg and Markit, the two sources most often used by professional investors. For Bloomberg, we will dive into the specifics of the Deal Section, Calculator Section and Market Section to see how theoretical CDS concepts are used in practice. We then explore the Markit CDS Calculator, with an emphasis on the terminology differences from Bloomberg.

Finally, we introduce the \textbf{creditr} package, which allows users to calculate information regarding a particular CDS in \textbf{R}. The creditr package uses the same ISDA Standard Model that Bloomberg and the Markit CDS Calculator use, and provides generic methods to output the calculation results in a way that is similar to Bloomberg and Markit.

# Citations

Lenzner, Robert. March 2009. "Who's Afraid Of Credit Default Swaps?" Forbes.

Lanchester, John. June 2009. "Outsmarted." The New Yorker.

Kallianiotis, John. October 2013. "Exchange Rates and International Financial Economics: History, Theories, and Practices." Palgrave Macmillan

Markit. May 2013. "Markit Interest Rate Curve XML Specifications Version 1.15." Markit Journal.

Chacko, George and Sjoman, Anders and Motohashi, Hideto and Dessain, Vincent. 2006. "Credit Derivatives: A Primer on Credit Risk, Modeling, and Instruments." Wharton School Publishing
