import pytest
from grarticle import sblgnt
from pathlib import Path

import sys

def test_parse():
    for testpath in __get_testfiles():
        parsed = sblgnt.parse(str(testpath))
        assert parsed is not None
        assert parsed.len() > 1
        words = [ _ for _ in parsed.read() ]
        assert words is not None
        assert len(words) > 0

def __get_testfiles():
    testpath = Path('data/sblgnt')
    testfiles = [ _.absolute() for _ in testpath.iterdir() if _.is_file() ]
    return testfiles