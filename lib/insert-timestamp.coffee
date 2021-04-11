InsertTimestampView = require './insert-timestamp-view'
{CompositeDisposable} = require 'atom'

module.exports = InsertTimestamp =
  InsertTimestampView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    atom.commands.add 'atom-workspace', 'insert-timestamp:tunix': => @tunix()
    atom.commands.add 'atom-workspace', 'insert-timestamp:tpython': => @tpython()
    atom.commands.add 'atom-workspace', 'insert-timestamp:DateT': => @DateT()
    atom.commands.add 'atom-workspace', 'insert-timestamp:ISO8601': => @tISO8601()


  DateT: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(new Date().toLocaleString())

  tpython: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(Date.parse(new Date()).toString()[..9])

  tunix: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(Date.parse(new Date()).toString())

  tISO8601: ->
    editor = atom.workspace.getActivePaneItem()
    editor.insertText(new Date().toISOString())
