
App.cable.subscriptions.create { channel: "CommentsChannel" },
  received: (data) ->
    alert(111)
    @appendLine(data)
