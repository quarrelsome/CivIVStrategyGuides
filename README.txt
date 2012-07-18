A repository for the work in progress on the illustrated strategy guides for Civ IV.

----

> So what does it do exactly?

Well it takes CIV4LeaderHeadInfos.xml (renamed as source.xml) and converts it using XSLT into the VBulletin layout that is being used here. It does this for every single leader in one go!

> How do I run it?

First, download it as either .zip or via the Github client. Then open the "Know Your Enemy" folder.
In the folder there are three executable .bat files:

* Preprocess - ONLY.bat - just performs the pre-processing (to make the values easier to output)
* Transform-HTML.bat - Transforms the xml to a html format (only a teeny bit of this done)
* Transform-VBulletin - Transforms the xml into VBulletin format, the current output is what you saw in my last post.

They output the files:

* ProcessedSource.xml
* Output - HTML.htm
* Output - VBulletin.txt

respectively.

> I ran it and it said warning

You should get one warning when running it about using version 1.00 in a version 2.00 parser. This is okay, you can ignore it.

> I ran it and it broke

Uh-oh. Did you edit any of the files? If so you may have accidentally broken one of the bits of the code, perhaps missed one of the angle brackets (<>). If you retrace your steps (undo) you should eventually get it back to a state where it works. If you use the Github client you can make local commits so its easier to rollback to a working state. But you need to SYNC if you want to publish your changes back to everyone.

> What good is this to me? I can't code!

I've tried my best to split the "hardcore" programming from the layout, the file "PreProcess.xsl" deals with massaging the data (the "hardcore" programming) where KnowYourEnemy-VBulletin.xsl deals with almost purely the layout (just html or vbulletin formatting). So you should be able to modify the KnowYourEnemy-VBulletin.xsl file to change the look of the output.

> It just outputs a text file, what use is this?

Just grab a chunk of it and put it in here as a reply and hit preview to check out how it looks here.

> How are we going to add stuff like Analysis and Images to this?

Images we can easily add by directly editing the source.xml and adding more elements to it (LeaderImage = http://etc). Then editing the ...VBulletin.xsl to pull those values back out.
Analysis is a bit more difficult as it will require its own formatting.... we can possibly add more elements like: Analysis1Header, Analysis1Text, Analysis2Header, Analysis2Text, etc but that's up for debate atm.

> Why bother?

Well this means we can write the analysis and the data without worrying about how its going to look. We can play around with as many layouts as we want before deciding on the final layout at which point we only do it once and then its done for all the leaders! YAY!
We can also easily output to different formats at a later date if required (.html for example).

> Why Github?

Because I automatically put any code in version control (version control IS AMAZING) and also so that any work we perform doesn't rely on the availability and backups of CivFanatics. I love this forum but obviously it would suck if it went down without backups after putting so much work in. If we use Github that's no longer a problem.

> I understand all of this already, stop being so patronising!

Sorry.