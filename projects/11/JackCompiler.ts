#!/usr/bin/env ts-node
import { readFileSync } from "fs";
import { parse, tokenize } from "./lib";
import { generate } from "./lib/generate";

const main = (): void => {
	if (process.argv.length < 3) {
		console.info("Usage: JackCompiler.ts <FILE>");
		process.exit(0);
	}
	const inputFile = process.argv[2];
	const contents = readFileSync(inputFile, "utf8");

	const tokenized = tokenize(contents);
	console.log("TOKENIZED");
	console.log(tokenized);

	const parsed = parse(tokenized);
	console.log("PARSED");
	console.log(JSON.stringify(parsed, undefined, 2));

	const generated = generate(parsed);
	console.log("GENERATED");
	console.log(generated);

	console.info("Done :)");
	process.exit(0);
};

main();
