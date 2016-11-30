"use strict";

module.exports = function(irc, network) {
	const client = this;
	irc.on("ison", data => {
			client.emit("ison", {
				online: chan.id
			});
	});
};
