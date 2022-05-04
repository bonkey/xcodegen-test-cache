test: delete_project generate_project sw_vers

generate_project:
	echo "\nstruct Foo {}" > Sources/Foo.swift
	mint run XcodeGen --use-cache
	echo "\nstruct Bar {}" >> Sources/Foo.swift
	mint run XcodeGen --use-cache

delete_project:
	rm -rf Kaboom.xcodeproj

sw_vers:
	sw_vers