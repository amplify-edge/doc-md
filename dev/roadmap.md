# dev roadmap

## 2021-06-01

New dev taking over and needs some onboarding... I think that approaching it in this order makes sense.

- alex
	- alex has some outstanding PR's and so contact him and he can show you where they are on his personal github, and oyu can take them over and merge them.

- top versus bottom
	- one thing about the archi is that main rpeo has some code that is needed to "boot everythig" and yet you also want that same code to boot the examples in the further down repos.
	- alex refactored everything to get it so it is liek this. Just i think we ran out of time to get the examples in each repo using it.
	- i personally feel that the code should be sys-share actually !! Not in main and not in booty. Why ? Cause sys-share is ALL about what other repso need at runtime. Boot is all about gen time and buildign time and NOT runtime.

- stategy
	- work from the bottom up in terms of the dependencies.
		- booty, sys-share, sys, mod and finally main.
	- make the examples in each repo work  these used to work but were removed. It makes it hard for devs to work with the many layers of the system without basic examples at each level. I think they were rmeoved because of the maintenance management
	- https://github.com/jsonnet-bundler/jsonnet-bundler was chosen as a way to manage version controlled dependencies, as we needed to be able to pull some built things from git repos deeper down in sys etc. This is because those things frther down are fully working independent services with lots of code that is generated and used at runtime ( like lang translations, ect)
	- config. with the examples working further down it shoudl be much easier to manage the config. I can remember how it works higher up. Alex knows more and maybe has time to guide you.
	- language translation. ask alex. He set it up as a service somethere so that the boot language functionaity just works.
		- add any test or test hardness you need to booty to confirm it works. I think its probably running at hertzner.
	- go modules server. Ask alex where the code is and where its running. I think its probably running at hertzner.


- booty
	- fix hugo bug. Could way to learn how it works. Looks like the download format has cheange maybe on the hugo release page if i had to guess.
	- get familiar with it, because it runs everything
	- booty is used at gen, build, run, and update time. Its all emcomapssing so that devs and users ( non techi) can have one cli to make it work ANYWHERE ( desktop or data cneter server)
	- its actually very cool. stick with it is my advice. Other teams have started to also adopt this approach.

- sys-share
	- this is really just the GRPC API stuff.
	- make sure gen works with booty.
	- dont think example is important here.

- sys
	- run make and check that sys runs.
	- the example was removed and i think needs to be added so that its easy to play with sys. Just find where improbable is used in the coe base to boot the grpc stuff and you will find enough code there to make an example, and update the make file to compile and run it.

- mod
	- run make and check that sys runs. Does for me.
	- Config in example sis needed i feel, so you can run JUST this imdependent.

- main
	- finalyl main.