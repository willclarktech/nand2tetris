#!/usr/bin/env ts-node
import { readFileSync } from "fs";
import { tokenize } from "./lib";

const main = (): void => {
	if (process.argv.length < 3) {
		console.info("Usage: JackCompiler.ts <FILE>");
		process.exit(0);
	}
	const inputFile = process.argv[2];
	const contents = readFileSync(inputFile, "utf8");

	const tokenized = tokenize(contents);
	console.log("RESULT");
	console.log(tokenized);
	console.log(tokenized.slice(100));
	console.log(tokenized.slice(200));
	console.log(tokenized.slice(300));
	console.log(tokenized.slice(400));

	console.info("Done :)");
	process.exit(0);
};

main();
