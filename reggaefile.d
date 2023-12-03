import reggae;
import reggae.path;

Build reggaeBuild() {
   import std.process: environment;
   //enum simple = buildPath("/home/o3o", ".dub", "packages",  "/simple-math/1.1.0/simple-math/source");

   string simple = buildPath(dubPackagesDir, "/simple-math/1.1.0/simple-math/source");
   auto app = scriptlike!(
         App(
            SourceFileName(`src/app.d`),
            BinaryFileName(`math`)
            ),
         Flags(),
         ImportPaths([`../animal/src`, simple])
         //, () => Target(`../animal/build/libanimal.a`)
         );
   return Build(app);
}

