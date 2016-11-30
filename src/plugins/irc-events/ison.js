"use strict";

module.exports = function(irc, network) {
	var client = this;
	var Msg = require("../../models/msg");

	irc.on("ison", function(data) {
			console.log(data);
			var chan = network.getChannel(data.nicks);
			var msg = new Msg({
				type: Msg.Type.PART,
				time: data.time,
				text: data.message || "",
				hostmask: data.ident + "@" + data.hostname,
				from: data.nick
			});
			chan.pushMessage(client, msg);
	});
};
