---
tags: documentation,national-lab
title: "Add contributor guidance for (sub)section reST header syntax"
html_url: "https://github.com/olcf/olcf-user-docs/issues/143"
user: jack-morrison
repo: olcf/olcf-user-docs
---

reST allows a lot of flexibility in [how (sub)sections are defined](http://docutils.sourceforge.net/docs/user/rst/quickstart.html#sections), but requires consistency of non-alphanumeric characters defining (sub)sections throughout a document.

This issue proposes that we define guidance for all reST documents in this repo in `/contributing/`.

To my knowledge, the Summit User Guide currently has the deepest subsection nesting, and should serve as the model:

The proposed order of characters is:
Asterisks
Equals
Dashes
Carets
Double Quotes
Underscores
Periods

(Asterisks necessarily placed above and below text. All others must be below and at least as long as the section title text.)

```
******
header
******

    section
    =======

        sub-section 1
        -------------

            sub-section 2
            ^^^^^^^^^^^^^

                sub-section 3
                """"""""""""""

                    sub-section 4
                    ______________

                        sub-section 5
                        ..............
```