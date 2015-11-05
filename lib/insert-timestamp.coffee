# InsertTimestampView = require './insert-timestamp-view'
{CompositeDisposable} = require 'atom'

module.exports = InsertTimestamp =

  activate: (state) ->
    atom.commands.add 'atom-workspace', 'insert-timestamp:tunix': => @tunix()
    atom.commands.add 'atom-workspace', 'insert-timestamp:tpython': => @tpython()
    atom.commands.add 'atom-workspace', 'insert-timestamp:DateT': => @DateT()


  DateT: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(new Date().toLocaleString())

  tpython: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(Date.parse(new Date()).toString()[..9])

  tunix: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(Date.parse(new Date()).toString())
