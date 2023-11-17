echo "Number of threads to compile with: "
read thread_count

cd ../../

python2 tools/scons/scons.py target=release_debug tools=yes musepack=yes theora=yes opus=yes platform=osx bits=64 optimized=speed -j$thread_count

rm -rf "bin/godot_xp.app"
cp -r "tools/Godot.app" ./"bin/godot_xp.app"
mkdir -p "bin/godot_xp.app/Contents/MacOS"
cp "bin/godot.osx.opt.tools.64" "bin/godot_xp.app/Contents/MacOS/Godot"
chmod +x "bin/godot_xp.app/Contents/MacOS/Godot"

