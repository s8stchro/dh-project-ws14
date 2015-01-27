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

## data range
- 14 letters of Paul and those likely by Paul (numbers are the numeration in [sblgnt](https://github.com/morphgnt/sblgnt), more info see [wikipedia](http://de.wikipedia.org/wiki/Paulusbriefe))
    'P1': ['66', '67', '68', '69', '71', '73', '78']
    'P1/P2': ['72']
    'P2': ['70', '74']
    'P3': ['75', '76', '77']
    'pP': ['79']
- 2 letters of Peter

## parameter extraction using python
1. all words denoted as C (conjunctions) are extracted
2. the conjunctions are filtered using the particle list (/data/dicts) via their Lemman-form
    - observation: in sblgnt, 'τε' has two forms 'τε' and 'τέ'

## list of parameters for the statistics
1. sample_no: 
	- one number for each data row
2. letter:
	- first two digits of the source file name, for identification
3. author
	- name of author (likely)
4. authenticity
	- categories in wikipedia, coding see data/paul_letters.txt
5. particle
6. part of speech (POS) of the particle
7. position from the start of the sentence
8. position from the end of the sentence
9. left neighbor of the particle
10. POS of left neighbor
11. right neighbor of the particle
12. POS of right neighbor
13. previous in-sentence punctuation and the word (PIP)
    - in-sentence punctuation = comma: `,` and semicolon: `·`
14. PIP position (from sentence start)
15. follwing in-sentence punctuation and the word (FIP) 
16. FIP position (from sentence start)

### TODO Parameters
1. particle_type (??)
	- three types: simple, combination, negation (according to Stelios’ list)
2. occurrence
	- how many times does the particle occur in the sample
3. frequency
	- occurrence / # words in the sample
	
## Done-List
1. list of particles and their variations
2. determed sampling scope
    - letters from Paul, Peter and likely-Paul
3. accent is not relevant for the analysis and therefore take Lemma form for the analysis
4. components of each word in a text sample can be parsed
5. parameter extraction with python program, output as csv file
6. determine POS-abbreviations for particle
    - if all particles are labled as C in the samples?
    - nope! Z.B.
    060832 X- -------- γε γε γέ γέ  (X=exclamation) => these cases are rare and are excluded from statistical analysis
    - what other POS are denoted as C?
    => if we can determine particle with the label C? If not, what other constrains can be added?
    - see "parameter extraction using python"
7. finalized the list of parameters to gather

## todo
1. python programm (Andreas's tool)
    - parsing of sentence
    - queries to get parameters
2. to extract parameters of Peter's letters
2. statistics
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
- sentences are everything between `.!;` (note that in greek the punctuation '?' is different):
    - period: `.`
    - comma: `,`
    - question mark: `;`
- in-sentence punctuations are:
    - semicolon: `·`
    - comma: `,`

## instructions

- run tests with `py.test`, make sure that you have installed all the dependencies with `pip install -r /path/to/requirements.txt`

## links

- http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0155:book=I%20Timothy
- [SBL Greek New Testament](https://github.com/morphgnt/sblgnt)
- [abbreviations](http://jtauber.com/2010/07/parse-helper/demo.html)
