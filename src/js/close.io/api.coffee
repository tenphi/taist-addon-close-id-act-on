Q = require 'q'

module.exports = (taistApi) ->
  closeIoApi = {
    authorized: no
    auth: (@token) ->
      if @authorized
        return Q.resolve(@_me)

      @_ajax 'me'

    _ajax: (command, settings) ->
      deferred = Q.defer()

      taistApi.proxy.jQueryAjax "https://#{@token}:@app.close.io", "/api/v1/#{command}/", settings or {}, deferred.makeNodeResolver()

      deferred.promise.then (data) =>
        @authorized = yes
        @_me = data.result

  }

  return closeIoApi
