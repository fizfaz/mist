initialize-release
initialize
	output := LittleEndianByteStream on: ByteArray new.
	labels := IdentityDictionary new