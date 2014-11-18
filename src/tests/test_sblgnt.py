import pytest
from grarticle import sblgnt

def test_parse():
    filepath = 'data/sblgnt/61-Mt-morphgnt.txt'
    parsed = sblgnt.parse(filepath)
    assert parsed is not None
    assert len(parsed) > 1
