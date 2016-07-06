# Your keymap
#
# Atom keymaps work similarly to style sheets. Just as style sheets use
# selectors to apply styles to elements, Atom keymaps use selectors to
associate
# keystrokes with events in specific contexts. Unlike style sheets however,
# each selector can only be declared once.
#
# You can create a new keybinding in this file by typing "key" and then hitting
# tab.
#
# Here's an example taken from Atom's built-in keymap:
#
# 'atom-text-editor':
#   'enter': 'editor:newline'
#
# 'atom-workspace':
#   'ctrl-shift-p': 'core:move-up'
#   'ctrl-p': 'core:move-down'

'.workspace':
  'cmd-h': 'core:select-left'
  'cmd-l': 'core:select-right'
  # 'cmd-h': 'core:move-left'
  # 'cmd-l': 'core:move-right'
  'alt-j': 'core:move-down'

  'ctrl-h': 'core:move-left'
  'ctrl-l': 'core:move-right'

  'alt-h': 'editor:move-to-beginning-of-word'
  'alt-k': 'core:move-up'
  'alt-l': 'editor:move-to-end-of-word'
  'ctrl-j': 'core:move-down'
  'ctrl-k': 'core:move-up'
  'alt-enter': 'core:move-down'
  'alt-shift-enter': 'core:move-up'

  'cmd-shift-h': 'editor:select-to-first-character-of-line'
  'cmd-shift-l': 'editor:select-to-end-of-line'
  'alt-shift-h': 'editor:select-to-beginning-of-word'
  'alt-shift-l': 'editor:select-to-end-of-word'

  'cmd-j': 'editor:select-line'


  'ctrl-o': 'tree-view:toggle-focus'

  # 'ctrl-shift-h': 'editor:select-to-first-character-of-line'
  # 'ctrl-shift-l': 'editor:select-to-end-of-line'


  # 'ctrl-a': 'editor:move-to-end-of-line'
  # 'ctrl-i': 'editor:move-to-first-character-of-line'

  'cmd-j': 'core:select-down'
  'cmd-k': 'core:select-up'






'.workspace .editor:not(.mini)':
  'cmd-h': 'core:select-left'
  'cmd-l': 'core:select-right'
  # 'cmd-h': 'core:move-left'
  # 'cmd-l': 'core:move-right'
  'alt-h': 'editor:move-to-beginning-of-word'
  'alt-l': 'editor:move-to-end-of-word'
  'alt-j': 'core:move-down'
  'alt-k': 'core:move-up'
  'cmd-j': 'core:move-down'
  'cmd-k': 'core:move-up'
  'ctrl-k': 'core:move-up'

  'alt-shift-h': 'editor:select-to-beginning-of-word'
  'alt-shift-l': 'editor:select-to-end-of-word'
  'cmd-shift-h': 'editor:select-to-first-character-of-line'
  'cmd-shift-l': 'editor:select-to-end-of-line'
  'ctrl-h': 'core:move-left'
  'ctrl-l': 'core:move-right'

  'alt-enter': 'core:move-down'
  'alt-shift-enter': 'core:move-up'

  'ctrl-o': 'tree-view:toggle-focus'

  'cmd-j': 'core:select-down'
  'cmd-k': 'core:select-up'





  # 'ctrl-shift-h': 'editor:select-to-first-character-of-line'
  # 'ctrl-shift-l': 'editor:select-to-end-of-line'

  # 'ctrl-a': 'editor:move-to-end-of-line'
  # 'ctrl-i': 'editor:move-to-first-character-of-line'


 # 'ctrl-j': 'editor:select-line'
#  'ctrl-j'
 # 'ctrl-h'
 # 'ctrl-l'
 # 'ctrl-alt-h'
#  'ctrl-alt-l'
 # 'ctrl-shift-h'
 # 'ctrl-shift-l'
#  'alt-h'
#  'alt-l'
#'body'
#  'cmd-j': 'move-down'










#
# You can find more information about keymaps in these guides:
# *
https://atom.io/docs/latest/using-atom-basic-customization#customizing-key-bindings
# * https://atom.io/docs/latest/behind-atom-keymaps-in-depth
#
# If you're having trouble with your keybindings not working, try the
# Keybinding Resolver: `Cmd+.` on OS X and `Ctrl+.` on other platforms. See the
# Debugging Guide for more information:
# * https://atom.io/docs/latest/hacking-atom-debugging#check-the-keybindings
#
# This file uses CoffeeScript Object Notation (CSON).
# If you are unfamiliar with CSON, you can read more about it in the
# Atom Flight Manual:
# https://atom.io/docs/latest/using-atom-basic-customization#cson
