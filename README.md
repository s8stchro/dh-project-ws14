# Authorship Attribution from Stylistic Analysis Based on Particle Distribution
- project for the digital humanities course at university of leipzig in ws 2014

- requires `python3` and `pip`
- [@github](https://github.com/KLINGTdotNET/dh-project-ws14) [private]

## motivation
The aim of the project is to analyse texts in ancient Greek New Testament to identify the accustomed ways of using particles of specific authors. To achieve this aim, documents from several authors of the same era will be used for stylistic analysis (see "tasks" below) to determine their authorship attributions. Based on these statistics, some test documents of same authors will be used for verificaton. For the application, we intend to identify the authorship of anonymous texts.

The project also has follwoing prospectives:
- to characterise the stylistic development of an author through his life time
- to observe the change of partical usage in greek lauguage through time by analyzing documents from different eras

## particle

- on [wikipedia](http://www.wikiwand.com/en/Grammatical_particle)
- function word
- only meaning in combination with other words or phrases
- seperate part of speech
- position in text is relevant, before a noun and after an adjective for example
- typically words that encode grammatical categories, such as negation (, mood, tense, or case not in greek!)

## tasks
1. statistics used for the stylistic analysis
    - particle
        - frequency in text
        - its positions
            - relative position to the beginning of the sentence, or subsentence `,`
            - relative position to other words
    - preceding and following words
        - what is the word directly before the particle and the one after
        - which part of speechs do they possess

2. 5 (or 6) semantical categories of particles
    - make it possible to search for particles that are in a specific semantical category
3. maybe: development of particle usage over time and in different genres

## todo

- understanding the meaning of abbreviations from the part of speech
- getting the list of particles and their variations
    - accent
    - combinations with other particles
    - combinations with other words

## technical details
- sentences are everything between `.!?` (note that in greek the punctuation is different):
    - period: `.`
    - comma: `,`
    - question mark: `;`
    - semicolon: `·`
- `,` commas will be ignored (temporarily)

## instructions

- run tests with `py.test`, make sure that you have installed all the dependencies with `pip install -r /path/to/requirements.txt`

## links

- http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0155:book=I%20Timothy
- [SBL Greek New Testament](https://github.com/morphgnt/sblgnt)
- [abbreviations](http://jtauber.com/2010/07/parse-helper/demo.html)