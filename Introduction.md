DEAR ALL MEMBERS ;

	Welcome to Amplıfy Edge developers group .Amplıfy Edge is a software system founded by Gerard WEBB ,he has 25 years of experience in this field . At the beginning We set up this group for chatting on developing our software  system, then we saw it is good to share new projects in the software world . 

	We add you into this group because business people have to follow new technologies to achieve success in their  business, not to lag behind the progress in the digital world . Follow us to take your company and team to the top and, of course, take advantage of the extraordinary blessings of technology . Let's look at various practices together and Share our views. Be prepared to be the first to experience our software, which we have been working on for a long time, and capture startup opportunities that others will never be able to access .Below we have shared notes to help you learn more about our Software  .Pleasant Reading.




Figma to Flutter | Bridged
Figma to Flutter | automate your frontend development. Instantly convert your design to production ready code.

...All i need is:

- dynamic flutter gui driven by my db. SO no redeploy is needed
- golang wasm under flutter so that we can load extra functionality at runtime. Think add ons ! And so no redeploy is needed
 - we can make calls to google services without them realising !!
  - if we want to reduce ops costs.
 - we can run our own stuff in cloud run, and call down into google services.
- API access to google drive, sheets, etc so that we use THAT as the final data store.
 - either for mine store or for users store. If users store than the Credentials are supplied by the Org.
- security auth / authz layer so that Orgs can control router access.

- i18n. 

- can we talk to firebase deploy on an Orgs behalf ? cause that will allow me to take over that part too. They can then add their apple and google keys into their firebase and then my backend controls it all.
- can i output the data that drives the system to the orgs github ? Yes, but it has to be made clear

then offer the biz functionality in stages:
- wireframing that allows you to compose and then use in your app. they just need to ad the auth keys 
- i18n so that their apps are in all langugaes for zero effort.
- deploy for them via firebase so they do nothing and can share their work via test flight, etc
- now the data side of things.
- security of routes ( gui and data )
- graphql for access data. Might give then a graphQl IDE, unlike NO CODE IDE's ?
- ops so they can see whats happening. Apache Sky looks best.
- analytics so they can se who is visiting.

How to charge ?
- they had to setup the firebase account, and so will incur charges for all that.

- 



## bridged

https://bridged.xyz/

uses flutter dynamic

vid: https://www.youtube.com/channel/UCgJO5apXl_pXRfTxNrkbEBw/videos

code. https://github.com/bridgedxyz/dynamic

API also uses events, like show dialog, so essentially its a twin architecture with the server being ale to drive the GUI.
- code ex: https://github.com/bridgedxyz/dynamic/blob/master/node/core/lib/actions/index.ts#L159
- this is pretty cool actually...
- orgs devs cna then script things on their backend, so they can drive the Modules we provide.
- But I can use the same to drive the IDE also.


## unicorn platform
https://app.unicornplatform.com/
- web site builder
- 10 USD per month to make it work on your domain and add other editors.

appsheet


## airtable
https://airtable.com/
- signup forces access to your contacts so they can copy them !
- can use existing data from google sheets, Paste table data, Microsoft excel, CSV
- asks to create a template for you.
- they have an overlay tutorials which is VERY good.
- have SDK to build apps
 - Blocks SDK: https://airtable.com/developers/apps
 - is react based, and so javascript
 - concepts used in the Blocks SDK are function components and hooks.
 - tut: https://airtable.com/developers/apps/guides/hello-world-tutorial
 - https://github.com/Airtable/apps-todo-list/blob/master/media/block.gif
  - shows real time !!




## airtable

basic home page stuff needed

intercom
- need this on main page to encage users.
https://github.com/v3rm0n/intercom_flutter

onboard overlay to show how to use the app.
https://pub.dev/packages/flutter_portal
- https://github.com/rrousselGit/flutter_portal


## mockflow

https://www.mockflow.com/

https://mockflow.com/pricing/

https://mockflow.com/app/#Wireframe

the UX is shit and yet they charge for this.

google workplace: https://workspace.google.com/u/0/marketplace/app/wireframepro_gdocsaddon/127057374885?hl=en-GB&pann=docs_addon_widget

BTW this is how to write a Google Workspace Marketplace addon: 
https://developers.google.com/workspace/marketplace/overview

- ex: https://github.com/evbacher/gd2md-html/blob/master/addon/gdc.gs

golang https://github.com/googleworkspace/go-samples

----


	
