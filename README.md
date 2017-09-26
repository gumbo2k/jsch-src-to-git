# jsch-src-to-git
Download jsch src releases in zip format and turn them into a git repository for easier reading.

I like JSch. It fits the bill of a pure Java implementation of ssh quite nicely.
Unfortunately it doesn't seem to have a public source repository.

Neither [sourceforge](https://sourceforge.net/projects/jsch/files/) nor [maven](http://search.maven.org/#search|gav|1|g%3A%22com.jcraft%22%20AND%20a%3A%22jsch%22) offer a git/svn/cvs repository.
The repository at http://git.jcraft.com/jsch.git (the one listed in maven's pom file) only contains one commit of version 0.1.43.

So I've written two small scripts that will download and commit the source code zip archives from sourceforge and sequentially commit them to a newly created git repository.
Obviously it is only a very rough history, but it better than nothing at all.
