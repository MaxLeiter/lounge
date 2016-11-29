"use strict";

exports.commands = ["ison"];

exports.input = function(network, chan, cmd, args) {
	var irc = network.irc;
	if (args.length >= 1) { // If names are provided
		irc.raw("ISON", args.join(" "));
	} else { // No name provided
		irc.raw("ISON", args[0]);
	}

	return true;
};
