import pytest
from sblgntparser import parser
from pathlib import Path

import logging
log = logging.getLogger(__name__)

import sys

def test_parse():
    for testpath in __get_testfiles():
        text = parser.parse(str(testpath))
        assert text is not None
        assert len(text) > 0
        for sentence in text.sentences():
            assert sentence is not None
            assert len(sentence) > 0

def test_text():
    filepaths = __get_testfiles()
    for fp in filepaths:
        if '84-2Jn-morphgnt.txt' in str(fp):
            text = parser.parse(str(fp))
            for word in text.words():
                assert str(word) == str(word.sentence().words()[word.position()])
            assert text is not None
            hits = text.find('ἐν')
            assert hits is not None and len(hits) == 8

def __get_testfiles():
    testpath = Path('data/sblgnt')
    testfiles = [ _.absolute() for _ in testpath.iterdir() if _.is_file() and _.suffix == '.txt' ]
    return testfiles