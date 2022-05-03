test: delete_project create_file generate_project modify_file generate_project_with_cache

generate_project:
	mint run XcodeGen

generate_project_with_cache:
	mint run XcodeGen --use-cache

modify_file:
	echo "\nstruct Bar {}" >> Sources/Foo.swift

create_file:
	echo "\nstruct Foo {}" > Sources/Foo.swift

delete_project:
	rm -rf Kaboom.xcodeproj