# Readme

We created this repo to understand how .stringsdata files are normally structured. 

As far as I understand, .stringsdata files are a simple intermediate format that is intended to be generated based on source files (such as interface builder files or .swift files). .stringsdata files are then used by xcstringstool to update .xcstrings files (mark strings as stale, add new kv-pairs, change the value for a key in the development language). 

For MMF we also created .stringsdata files based on our .md files and used that to keep our .xcstrings files in sync with the .md files that they translate, which is really handy.

On our macOS project, the .stringsdata files we found in the build files never seemed to actually contain content, so we made this iOS project to get some example .stringsdata files.

 
