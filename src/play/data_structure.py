class Data():
    def __init__(self, infile, sentence, position):
        self.sample = data['']
        self.textpos = word['text_position']
        self.book = word['book']
        self.chapter = word['chapter']
        self.verse = word['verse']
        self.part_of_speech = word['part_of_speech']
        self.codes = word['codes']
        self.views = word['views']
        self._sentence = sentence
        self._position = position

    def __str__(self):
        return self.views['text']

    def sentence(self):
        return self._sentence

    def position(self):
        return self._position

    def neighbors(self):
        p = self._position
        if 0 == self._position:
            return {
                'left': None,
                'right': self._sentence.words()[p+1]
            }
        elif 0 < self._position < len(self._sentence) - 1:
            return {
                'left':  self._sentence.words()[p-1],
                'right': self._sentence.words()[p+1]
            }
        else:
            return {
                'left': self._sentence.words()[p-1],
                'right': None
            }
