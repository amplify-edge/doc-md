# roadmap

The roadmap shows a high level view of functionality added.

Changes are grouped under the following standard headings, to make it easier to see the functionaity that exists now and the planned additions and changes going forward.

## API

- GRPC based API to allow rapid development, and schema evolution so that Golang and FLutter clients at different versions can continue woring fully wihtout upgradind the Servers.
- Seperattion of GRPC Services and Models to allow agnostic networking transport independence so that both HTTP and WebRTC P2P is supported.
- Generation of golang and flutter code from the GRPC API.

## Modules

- Modules concept introduced to allow users and developers to add functionality to the system and the ability to scale out the system. These are compiled into the system at build time.
- Modules given their own encrypted database independent of the system database to allow a seperation of encrypted data and to allow scale out of the sysem physically at runtime such that a Module can run as its own independent process.
- Video Conferencing Mod added.
- Chat Mod added.
- Survey Mod ( aka mod-disco added )

## User Modules ( run time extensibility )

- User Module prototyping (Functional and Techncial architecture), so that devs and user can built modules at runtime, and not be dependent on a developer in order to extent the system.
- The design is based on:
  - BUI layer
    - A dynamic runtime based GUI Router,
    - Adaptive Cards Schema for GUI Pages,
  - API Layer
    - Protobuf Reflection for Types.
  - Data layer
    - CDC and Materialised Views.
  	- Subscription topic binding between the Data Layer and the GUI layer.
- TODO: Add Developer IDE into the GUI itself to allow users to extend the functionality, with synchronisation of the needed assest ( sql scheam, sql migration, etc) 
  
## Federation ( run time extensibility )

- Federation prototyping (Functional and Techncial architecture), so that many instances of the system run by different Orgs and Users can collaborate in real time. Currently the system only supports a instances communicating with themselves.
- The design uses Materialised Views with CDC at the data Layer, and NATS based dynamic Mutation and Subscription topics at the system layer so that any system or module functionality can be federated.
- TODO: Modules mapped to CDC and Materialised views mapped to Mutation and Subscription topics.
- TODO: Identity Public / Private system usng DID or other to allow the system to enforce identiy checks.
- TODO: Durable and Dynamic Mutation and Subscription topics, mapped to Modules


## Localisation

- Multiple languages GUI support.
- Generation of translated languages using git as the durable store.
- Automatic detection of the users default OS locale.
- TODO: Add translation memory and overides.
- TODO: Add runtime translation of data once the User Modules are introduced, so that 

## theme

- Light / Dark theme introduced.
- Automatic detection of the user default OS Light / Dark theme.

## configuration

- User Setting GUI system introduced.
- User Setting : allow the user to control the language as an override.
- User Setting : allow the user to control the theme as an overide.
- System Config: 
- TODO: extend to allow remote config
- TODO: allow feature flags

## Cross platform

- Web, Mobile and Desktop support added for the Database Server, Cli and GUI.
- Web is currently the favoured deployment target due to the ease of use and protection from app store take down, and hassle.

## Database

- encrypted no sql database to ensure all data at rest of secure.
- secured against the users password, with tokens rotated automatically.

## File system

- The file system concept of Folders and File is introduced to allow users to upload, downlaod and manipulae files.
- encrypted using the same encrypted database.

- encrypted file sysem using the encrypted database to ensure all data at rest of secure.

## cli

- cli introduced to allow users to control the system remotely.
- designed to be an exact reflection of the GRPC API via code gen to ensure that the API and CLI stay in sync automatically.

## namespace structure

- The concept of an Org and Project added, to allow multiple Orgs, Project and Users. Essentially multi-tenants.
- TODO: Add Drive to allow users to share into a Project any data ( represented by Modules), so that a user can control their own data and yet share what they want into a Project.

## identity

- user signup, login added to the GUI and CLI.
- system roles added ( sys-admin, org-admin, project-admin, project-user ), so that a user can be assocated with the Org / Project Namespace with a secure role within each.

## ops

- logs, traces and metrics introduced to allow insight into the operations of the system, so that developers and users can see the running the the system.
- gafana and victoria metrics added for developer and user ops to allow a basic way to monitor the system.
  - TODO: introduce integrated user ops once CDC / Materialized views introduced whereby the logs, traces and metrics are stored in he encrypted database
  - TODO: introduce a Flutter based OPS dashboard

- booty concept introduced to allow automation of the development, deployment, configuration and upgrades introduced, to make it easier for developers and users to deploy and manage the system themselves.

## data ops

- Introduced the ability of developers to generate semi random data so that they can easily bootstrap the system for testing. Designed to reflect off the GRPC API and the generated CLI.
- grpc and cli integrated to allow bootstrapping the system with semi randomised data, to make the system easier to test.
- acts as a template apon which orgs and users can easily use the randomised bootstrapping as a reference to easily bootstrap their own projects using the randomised.
- TODO: add Flutter screens.

## bootstrapping repositories

- Allows a user to add and remove bootstraps from system at runtime. This makes it easier for a user to 

## database backups

- snapshotting, streaming full and incremental backups to local or remotes sysems to ensure that a server failure is not catastrophic.

