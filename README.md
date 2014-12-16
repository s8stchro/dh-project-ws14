# Authorship Attribution from Stylistic Analysis Based on Particle Distribution
- project for the digital humanities course at university of leipzig in ws 2014

- requires `python3` and `pip`
- [@github](https://github.com/KLINGTdotNET/dh-project-ws14) [private]

## motivation
The aim of the project is to analyse texts in ancient Greek New Testament to identify the accustomed ways of using particles of specific authors. To achieve this aim, documents from several authors of the same era will be used for stylistic analysis (see "tasks" below) to determine their authorship attributions. Based on these statistics, some test documents of the same authors will be used for verificaton. For the application, we intend to identify the authorship of anonymous texts.

The project also has following prospectives:
- to characterise the stylistic development of an author through his life time (for example, Paul the Apostle's work can be devided into three phases. One might be able to determine the stylistic changes between these phases)
- to observe the change of partical usage in greek language through time by analyzing documents from different eras

## particle

- on [wikipedia](http://www.wikiwand.com/en/Grammatical_particle)
- function word
- only meaning in combination with other words or phrases
- seperate part of speech
- position in text is relevant, before a noun and after an adjective for example
- typically words that encode grammatical categories, such as negation (, mood, tense, or case — not in greek!)

## list of parameters for the statistics
1. sample_no:
	- a sample = a letter
2. authenticity
	- three groups: Paul, Peter, likely-Paul
3. particle
4. part of speech (POS)
	- possibly 'C' (to be proved, see 'todo')
5. particle_type
	- three types: simple, composed, negation (according to Stelios’ list)
6. occurrence
	- how many times does the particle occur in the sample
7. frequency
	- occurrence / # words in the sample
8. sentence break
    - sentence break = .!?
9. position from the start of the sentence
10. position from the end of the sentence
11. previous in-sentence punctuation (PIP)
    - in-sentence punctuation = comma: `,` and semicolon: `·`
12. position to PIP
13. follwing in-sentence punctuation (FIP)
14. position to FIP
15. POS of previous word
16. POS of following word
17. sentence
	- for those who can read to check ;-)

## Done-List
1. list of particles and their variations
2. determed sampling scope
    - letters from Paul, Peter and likely-Paul
3. accent is not relevant for the analysis and therefore take Lemma form for the analysis
4. components of each word in a text sample can be parsed

## todo
1. determine POS-abbreviations for particle
    - if all particles are labled as C in the samples?
    - what other POS are denoted as C?
    => if we can determine particle with the label C? If not, what other constrains can be added?
2. finalize the list of parameters to gather
3. pull relevant letters (samples) into one order in Github
4. python programm
    - parsing of sentence
    - queries to get parameters
5. statistics
    - methods: clustering, correlation, graphic representation, chi-square?
    - which software to use?

## ideas for future use
1. ideal results: in the cluster graph, two distinct groups are formed: Paul and Peter
    - to achieve this, fine tuning of the parameters can be done by
        - removing and adding parameters into analysis
        - removing samples that contain too little information (e.g. frequency of certain particle is under certain threshold, see also point 3)
    - basically this is to determine which parameters are relavent to distinquisch these two authors
2. then putting third group, likely-Paul, into the analysis and hopefully they go nicely into the group of Paul :fearful:
3. determine which particles to use
    - setting threshold of frequency?
    - does the particle really changes its position in the sentences? if yes, how variate?
    - ...
4. run seperate cluster analysis for
    - frequency-related parameters
    - position-related parameters
    - the combination of both (i.e. all parameters)

## technical details
- sentences are everything between `.!?` (note that in greek the punctuation is different):
    - period: `.`
    - comma: `,`
    - question mark: `;`
    - semicolon: `·`
- `,` commas will be ignored (temporarily)
- Paulus letters are the [66-77](https://github.com/morphgnt/sblgnt) files in the sblgnt, see [wikipedia](http://de.wikipedia.org/wiki/Paulusbriefe)

## instructions

- run tests with `py.test`, make sure that you have installed all the dependencies with `pip install -r /path/to/requirements.txt`

## links

- http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0155:book=I%20Timothy
- [SBL Greek New Testament](https://github.com/morphgnt/sblgnt)
- [abbreviations](http://jtauber.com/2010/07/parse-helper/demo.html)
