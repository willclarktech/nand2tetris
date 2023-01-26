#!/usr/bin/env ts-node
import { readFile, readdir, writeFile } from "fs/promises";
import { basename, dirname, join } from "path";
import { addSymbols, generate, parse, tokenize } from "./lib";

const processFile = async (inputFile: string): Promise<void> => {
	const dir = dirname(inputFile);
	const base = basename(inputFile).replace(new RegExp(`${JACK_SUFFIX}$`), "");
	const outputFile = join(dir, `${base}.vm`);
	const contents = await readFile(inputFile, "utf8");

	const tokenized = tokenize(contents);
	const parsed = parse(tokenized);
	const withSymbols = addSymbols(parsed);
	const generated = generate(withSymbols);
	const data = generated.join("\n");
	await writeFile(outputFile, `${data}\n`);
};

const JACK_SUFFIX = ".jack";

const main = async (): Promise<void> => {
	if (process.argv.length !== 3) {
		console.info("Usage: JackCompiler.ts <DIR|FILE>");
		process.exit(0);
	}
	const input = process.argv[2];
	const filesToProcess = input.endsWith(JACK_SUFFIX)
		? [input]
		: (await readdir(input))
				.filter((f) => f.endsWith(JACK_SUFFIX))
				.map((f) => join(input, f));
	for (const file of filesToProcess) {
		await processFile(file);
	}

	console.info("Done :)");
	process.exit(0);
};

main().catch((error) => {
	console.error(error);
	process.exit(1);
});
