# Web of Trusted Things
> WoTT
> Hackathon Demo Repo

This repo contains the smart contract we have created for the WoTT IOT Token Curated Registry.

## BACKEND
### Smart contract creation Tx 
https://rinkeby.etherscan.io/tx/0x925e4bf609bf0f5cc13094aab3d6d67f1bbc6736c292ae7e5c99dcc312cede44

### Smart Contract Location
https://rinkeby.etherscan.io/address/0xb3da90babe7dfe8e76c6ea220acc3d9bfb125800

### Smart Contract Logic
The way it works is:

1. Manufacturers enter devices into a smart contract registry with a corresponding token stake (in this case a fitbit)

2. Hackers can challenge a device being added to the registry by staking an equal amount of tokens against an entry in the registry and submitting proof of a vulnerability

3. First the manufacturer has the option to immediately reward the hacker

4. If the manufacturer disagrees with the challenge, the proof of vulnerability will be published and put to a vote by the token holders to determine whether the vulnerability really exists

5. The winner of the vote receives a percentage of the bounty and the voters will receive a percentage of the bounty proportional to the amount of tokens they staked

6. The value of the tokens and the marketplace is what enforces rational/honest behaviour

    * Misbehaving hackers will hurt the usefulness of the registry, which reduces participation by manufacturers and lowers the value of their token rewards

    * Misbehaving manufacturers will reduce participation by hackers which reduces the quality of the program and gets them worse talent


## FRONTEND
### Front End Repo
https://github.com/kingl-13/ample-admin-lite

### Front end live
https://s3.us-east-2.amazonaws.com/wotthackdemo/html/registry.html


## Social Media
[LinkedIn](https://www.linkedin.com/company/wott/)<br>
[Crunchbase](https://www.crunchbase.com/organization/wott-io)


--                                    

                       
                       
