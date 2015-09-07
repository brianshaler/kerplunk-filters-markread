module.exports = (System) ->
  globals:
    public:
      filters:
        actions:
          markRead:
            description: "mark as read"
          markUnread:
            description: "mark as unread"
  events:
    filters:
      actions:
        markRead:
          do: (data) ->
            data.item.read = true
            data
        markUnread:
          do: (data) ->
            data.item.read = false
            data
