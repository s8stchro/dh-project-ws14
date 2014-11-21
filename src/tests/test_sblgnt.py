import pytest
from grarticle import sblgnt
from pathlib import Path

import sys

def test_parse():
    for testpath in __get_testfiles():
        parsed = sblgnt.parse(str(testpath))
        assert parsed is not None
        assert len(parsed) > 1

def __get_testfiles():
    testpath = Path('data/sblgnt')
    testfiles = [ _.absolute() for _ in testpath.iterdir() if _.is_file() ]
    return testfiles