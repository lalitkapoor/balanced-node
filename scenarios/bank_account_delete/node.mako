% if mode == 'definition': 
balanced.BankAccounts.unstore

% else:
<%!
    import json

    def to_json( d ):
        return json.dumps( d , indent=4)
%>

var balanced_library = require('balanced-official');

var balanced = new balanced_library({
    marketplace_uri: "${ctx.marketplace_uri}",
    secret: "${ctx.api_key}"
});

balanced.BankAccounts.unstore("${request['uri']}", function (err, result) {
    /* . . . */
});

% endif
