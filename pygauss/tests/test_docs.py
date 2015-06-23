# -*- coding: utf-8 -*-
"""
Created on Wed Jun 17 04:57:18 2015

@author: chris
"""
from nose import tools as that
from nose_parameterized import parameterized

import pygauss as pg
import matplotlib.pyplot as plt
import pandas as pd


class Test_MSDocuments(object):
    def setUp(self):
        self.doc = pg.MSDocument()
    @parameterized(['no markdown', 
    '**just bold**', '*just italic*', 
    '**bold** first', 'last **bold**', 'middle **bold** middle',
    '*italic* first', 'last *italic*', 'middle *italic* middle',
    '*italic* **bold**', '**bold** *italic*',
    'a *full* phrase of **mixed bold** and *italic*'])
    def test_add_markdown(self, phrase):
        para = self.doc.add_markdown(phrase)
        that.assert_equal(para.text, phrase.replace('*', ''))

    @that.raises(Exception)
    def test_add_markdown_fails(self):
        self.doc.add_markdown('**open bold')
    
    def test_add_docstring(self):
        paras = self.doc.add_docstring("""
        # Heading 1
        ## Heading 2
        
        **paragraph** 1
        
        *paragraph* 2
        
        some_{subscript}
        
        some^{superscript}
        
        - bullet 1
        - bullet 2
        
        1. numbered 1
        2. numbered 2
        """)

        that.assert_equal([p.text for p in paras], 
                          ['Heading 1', 'Heading 2',
                          'paragraph 1', 'paragraph 2',
                          'somesubscript', 'somesuperscript',
                          'bullet 1', 'bullet 2',
                          'numbered 1', 'numbered 2'])        
        
    def test_add_list(self):
        plist = self.doc.add_list(['one', 'two', 'three'])
        that.assert_equal([p.text for p in plist], ['one', 'two', 'three'])

    def test_add_mpl(self):
        fig, ax = plt.subplots()
        self.doc.add_mpl(fig, width=1, height=1)
        
    def test_add_dataframe(self):

        df = pd.DataFrame({(' ', 'Cation'): {('B', 'cl'): 'emim',
          ('BE', 'cl'): 'emim',
          ('BM', 'cl'): 'emim',
          ('F', 'cl'): 'emim',
          ('FE', 'cl'): 'emim'},
         ('Test', 'Energy'): {('B', 'cl'): -21908.029244783389,
          ('BE', 'cl'): -21908.02923479681,
          ('BM', 'cl'): -21907.983241297457,
          ('F', 'cl'): -21908.362869942583,
          ('FE', 'cl'): -21908.353457551704},
         ('Test', 'Optimisation'): {('B', 'cl'): True,
          ('BE', 'cl'): True,
          ('BM', 'cl'): True,
          ('F', 'cl'): True,
          ('FE', 'cl'): True}})
         
        self.doc.add_dataframe(df, incl_indx=True)
         