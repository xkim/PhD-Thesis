# Prêt à Voter Uppaal model

An UPPAAL Model for voting protocol Pr&ecirc;t &agrave; Voter together with some natural extentions.

* *pret-vs-uppaal-model* --- contains the standard version of Pr&ecirc;t &agrave; Voter parameterized model, where:
    - *pretvsuppaal.ejs* --- a template used for generation of Uppaal models using EJS templating engine;
    - *config.json* --- stores current values of (some) configuration parameters;
    - *xml/* --- contains actual Uppaal models used in the experiments;
    - *queries/* --- contains Uppaal queries used in the experiments;
    - *generate.sh* --- an auxiliary script, used for generation of family of models over given configuration range;
    - *verify.sh* --- an auxiliary script, used for verification of properties from *queries* catalog on the models from *xml* catalog;

* *pret-vs-uppaal-model__simple-knowledge* --- contains an extented version, which allows verification of some knowledge-related properties; here both model and queries are provided explicitly;


## Uppaal overview
Uppaal window is divided into three main parts (tabs):  

1. **Editor** contains definition for the system and its components. Left-side tree allows to switch between different parts of the system.
The list of system processes has to be explicitly declared in *System declarations*.

2. **Simulator** can be used to run the system manually, choosing which transition to take, or to run in random mode (auto).

3. In the **Verifier**, system properties (queries) can be checked, added, modified and removed.
In order to have counter-example shown in sumilation, go to **Option** menu and change **Diagnostic Trace** to **Some**.


## How to load the model

1. Start the Uppaal program `uppaal.jar` for Windows (`uppaal` script for Unix).
2. From the **File** menu, select **Open System** and browse to the **.xml** file, containing model.
3. (optional) From the **File** menu, select **Open Quieries** and browse to the **.q** file, containing queries for verifier.


## Requirements

* [Java](https://www.oracle.com/java/technologies/) (at least 7)
* [Uppaal](https://www.it.uu.se/research/group/darts/uppaal/download.shtml) (4.0.15+)
* (optional) [EJS](https://ejs.co/)
