examples
fortyTwoWithBreak
	"Writes an executable that just exits with code 42."
	"ElfFile fortyTwoWithBreak"

	| elfFile seg |
	elfFile := ElfFile new.
	elfFile entryAddress: 16r00400000.
	seg := ElfSegment new.
	seg
		bytes: #(16rCC 16r48 16rB8 16rE7 00 00 00 00 00 00 00 16r48 16rBF 16r2A 00 00 00 00 00 00 00 16r0F 16r05 00 00) asByteArray.
	elfFile addSegment: seg.
	elfFile writeToFileNamed: 'forty-twoBreak'