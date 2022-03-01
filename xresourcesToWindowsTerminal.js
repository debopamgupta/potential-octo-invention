#! /usr/bin/env node

const fs = require('fs');
const termcolors = require('termcolors');

const xresources = fs.readFileSync('./.Xresources', 'utf8');
const colors = termcolors.xresources.import(xresources);

const windowsTerminal = termcolors.windowsTerminal.export(colors);
// console.log(windowsTerminal);
fs.writeFile('./windowsTerminal.json', windowsTerminal, (err) => {
	if(err) {
		console.error(err);
	}
});
