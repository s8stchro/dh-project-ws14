# project for the digital humanities course at university of leipzig in ws 2014

- requires `python3` and `pip`
- [@github](https://github.com/KLINGTdotNET/dh-project-ws14) [private]

## particle

- on [wikipedia](http://www.wikiwand.com/en/Grammatical_particle)
- function word
- only meaning in combination with other words or phrases
- seperate part of speech
- position in text is relevant, before a noun and after an adjective for example
- typically words that encode grammatical categories, such as negation (, mood, tense, or case not in greek!)

## tasks

1. authorship attribution from stylistic analysis based on particle distribution
	- frequency
	- position in text
	- relative position to other words
	- relative position to the beginning of the sentence
2. 5 (or 6) semantical categories of particles
	- make it possible to search for particles that are in a specific semantical category
3. maybe: development of particle usage over time and in different genres

## todo

- understanding the meaning of abbreviations from the part of speech
- getting list of particles and their variations

## instructions

- run tests with `py.test`, make sure that you have installed all the dependencies with `pip install -r /path/to/requirements.txt`

## links

- http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.01.0155:book=I%20Timothy
- [SBL Greek New Testament](https://github.com/morphgnt/sblgnt)
