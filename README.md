# LaTeX Dungeon World Playbooks

These are the core Dungeon World playbooks, transcribed and formatted using LaTeX. This makes a small number of formatting changes.

## Formatting

These transcriptions try to use colors, formatting, and sigils extensively to indicate important nouns and verbs in the game itself. These include the following:

- Moves are written in blue, with a diamond sigil.
- Move triggers or conditions are written in red.
- Spells and certain special features are written in purple, with a star sigil.
- Tags are written in green italics.
- Results of die rolls are always called out in bold.

The two fonts used in these playbooks can be acquired for free from Google fonts. The header font is [Metamorphous](https://fonts.google.com/specimen/Metamorphous) and the body font is [PT Serif](https://fonts.google.com/specimen/PT+Serif).

## Credit

Dungeon World was written by Sage LaTorra and Adam Koebel. These LaTeX versions are based on a heavily modified version of [this template character sheet](https://www.reddit.com/r/DungeonWorld/comments/6ndyz9/character_sheet_template_in_latex_format/) from Reddit user [TheDarkLumo](https://www.reddit.com/user/TheDarkLumo).

## Under the Hood

While there are a definite number of remaining formatting-related concerns, these playbooks are itended to, as much as possible, rely on more semantic formatting. These include the following constructs:

- The basic varying features of the playbook are defined with various
  macros: `pbClass`, `pbBaseHP`, and `bpDamage` should be invoked with the playbook name, the base HP modifier, and the damage die, respectively. The `pbLook` and `pbNames` macros can be invoked more than once, and each invocation adds a new line to the _Look_ and _Names_ sections.
- The aforementioned textual cues all have associated macros: `\condition{}` for a move trigger, `\move{}` for the name of a move, `\spell{}` for the name of a spell, `\itag{}` for a tag, and `\ntag{}{}` for a tag with an associated number.
- Common tags have dedicated macros as well, including `\weight{}`, `\damage{}`, `\armor{}`, `\uses{}` and `\ammo{}`.
- Macros are used for die roll results: `\onSuccess`, `\onPartial`, `\onHit`, and `\onMiss` are the most common. All of these begin with a capital letter, so they are intended to be used as the beginning of a sentence.
- The `\moveReplaces{}` and `\moveRequires{}` macros are used in advanced moves to indicate which other moves they replace or require.
- The `basicmove` and `amove` environments take an argument and produce a section with a header formatted as a move name. The `amove` environment has a checkbox to the left, for optional advanced moves.
- The `optfeature` environment is like `amove` but without the move name coloring or sigil, and is used for things like alignment selection.
- The `choices` environment is an `itemize`-like environment where `item` renders as a checkbox.

## Important Note

These are versions derived from modified versions of the core playbooks for a custom campaign. I've attemped to remove all references to rules and features of this custom campaign, but it's possible I've missed something: please let me know if this is the case!
