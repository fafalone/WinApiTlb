VB5EXE    = \progra~1\devstudio\vb\vb5.exe
RCEXE     = \progra~1\devstudio\vb\wizards\rc.exe
EXEDIR    = exes

!IFDEF r
CORECONST = afDebug=0:fComponent=1
COMPCONST = afDebug=0:fComponent=0
EXECONST  = afDebug=0:fComponent=0
COMPDIR   = release
!ELSE
CORECONST = afDebug=5:fComponent=1
COMPCONST = afDebug=5:fComponent=0
EXECONST  = afDebug=5:fComponent=0
COMPDIR   = debug
!ENDIF

ALL:    COMPONENTS CLIENTS

COMPONENTS: \
        COLORPICKER DROPSTACK EDITOR LISTBOXPLUS NOTIFY \
        PICTUREGLASS SIEVEBASCTLN SIEVEBASCTLP SIEVEBASDLLN \
        SIEVEBASDLLP SIEVEBASEXEN SIEVEBASEXEP SIEVEBASGLOBN \
        SIEVEBASGLOBP SUBTIMER VISUALCORE VBCORE

COLORPICKER:   $(COMPDIR)\colorpicker.ocx
DROPSTACK:     $(COMPDIR)\dropstack.ocx
EDITOR:        $(COMPDIR)\editor.ocx
LISTBOXPLUS:   $(COMPDIR)\listboxplus.ocx
NOTIFY:        $(COMPDIR)\notify.exe
PICTUREGLASS:  $(COMPDIR)\pictureglass.ocx
SIEVEBASCTLN:  $(COMPDIR)\sievebasctln.ocx 
SIEVEBASCTLP:  $(COMPDIR)\sievebasctlp.ocx 
SIEVEBASDLLN:  $(COMPDIR)\sievebasdlln.dll 
SIEVEBASDLLP:  $(COMPDIR)\sievebasdllp.dll 
SIEVEBASEXEN:  $(COMPDIR)\sievebasexen.exe 
SIEVEBASEXEP:  $(COMPDIR)\sievebasexep.exe 
SIEVEBASGLOBN: $(COMPDIR)\sievebasglobn.dll
SIEVEBASGLOBP: $(COMPDIR)\sievebasglobp.dll 
SUBTIMER:      $(COMPDIR)\subtimer.dll 
VBCORE:        $(COMPDIR)\vbcore.dll
VISUALCORE:    $(COMPDIR)\visualcore.dll 


$(COMPDIR)\colorpicker.ocx: \
        colorpicker.ctl colorpicker.ctx ctltool.bas debug.bas 
    $(VB5EXE) /m colorpicker.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\dropstack.ocx: \
        dropstack.ctl dropstack.ctx ctltool.bas debug.bas 
    $(VB5EXE) /m dropstack.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\editor.ocx: \
        editor.ctl editor.ctx search.frm search.frx ctltool.bas \
        debug.bas DROPSTACK VBCORE
    $(VB5EXE) /m editor.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\listboxplus.ocx: # \
#        lstboxplus.ctl lstboxplus.ctx list.pag list.pgx enumvar.cls \
#        listenums.cls listitemwlk.cls p_ivarwlk.cls ctltool.bas \
#        debug.bas enumvar.bas errors.bas utility.bas wintool.bas 
    $(VB5EXE) /m listboxplus.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\notify.exe: \
        ifilenotifier.cls notify.cls notify.bas debug.bas
    $(VB5EXE) /m notify.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\pictureglass.ocx: \
        picglass.ctl picglass.ctx ctltool.bas debug.bas
    $(VB5EXE) /m pictureglass.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasctln.ocx: \
        sieven.ctl sieven.ctx
    $(VB5EXE) /m sievebasctln.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasctlp.ocx: \
        sievep.ctl sievep.ctx
    $(VB5EXE) /m sievebasctlp.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasdlln.dll: \
        sievebasdlln.cls
    $(VB5EXE) /m sievebasdlln.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasdllp.dll: \
        sievebasdllp.cls
    $(VB5EXE) /m sievebasdllp.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasexen.exe: \
        sievebasexen.frm sievebasexen.frx sievemainn.bas \
        sievebasexen.cls
    $(VB5EXE) /m sievebasexen.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasexep.exe: \
        sievebasexep.frm sievebasexep.frx sievemainp.bas \
        sievebasexep.cls
    $(VB5EXE) /m sievebasexep.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasglobn.dll: \
        sieveglobaln.cls
    $(VB5EXE) /m sievebasglobaln.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\sievebasglobp.dll: \
        sieveglobalp.cls
    $(VB5EXE) /m sievebasglobalp.vbp /outdir $(COMPDIR) /d $(COMPCONST)

$(COMPDIR)\subtimer.dll: \
        isubclass.cls subclass.cls timer.cls debug.bas subclass.bas \
        timer.bas
    $(VB5EXE) /m subtimer.vbp /outdir $(COMPDIR) /d $(CORECONST)

$(COMPDIR)\visualcore.dll: \
        about.frm about.frx colorpicker.frm colorpicker.frx \
        openpic.frm about.cls colorpicker.cls \
        openpic.cls split.cls debug.bas visicore.res VBCORE
    $(VB5EXE) /m visualcore.vbp /outdir $(COMPDIR) /d $(CORECONST)

$(COMPDIR)\vbcore.dll: \
        butterfly.cls drive.cls drives.cls drivewlk.cls enumvar.cls \
        executive.cls fileinfo.cls keyboard.cls link.cls list.cls \
        listwalk.cls minmax.cls module.cls palette.cls picglass.cls \
        process.cls regitem.cls regitemwlk.cls regnode.cls \
        regnodewlk.cls sharestr.cls shortcut.cls sorthelp.cls stack.cls \
        sysmenu.cls system.cls trayicon.cls vector.cls vectorbool.cls \
        vectorboolwalker.cls vectordbl.cls vectordblwalker.cls \
        vectorint.cls vectorintwalker.cls vectorlng.cls \
        vectorlngwalker.cls vectorsng.cls vectorsngwalker.cls \
        vectorstr.cls vectorstrwalker.cls vectorwlk.cls version.cls \
        video.cls allocator.cls bytes.cls casts.cls comctl.cls \
        comdlg.cls draw.cls errors.cls exetype.cls filetool.cls \
        filter.cls foldtool.cls gditool.cls instance.cls math.cls \
        modtool.cls paltool.cls parse.cls pictool.cls proctool.cls \
        random.cls regtool.cls settings.cls shared.cls short.cls \
        sort.cls utility.cls winany.cls winiter.cls wintool.cls \
        ianimation.cls ifilter.cls isorthelp.cls usefile.cls \
        usefolder.cls useregitems.cls ivarwlk.cls iwinhelp.cls \
        allocator.bas debug.bas declare.bas draw.bas enumvar.bas \
        errors.bas objects.bas shared.bas winany.bas \
        vbcore.res SUBTIMER
    $(VB5EXE) /m vbcore.vbp /outdir $(COMPDIR) /d $(CORECONST)

vbcore.res: \
        vbcore.rc
    $(RCEXE) /v /r /fo vbcore.res vbcore.rc





CLIENTS: \
    COMPONENTS ALLABOUT ADDRESSOMATIC BITBLAST BROWSE BUGWIZ \
    COLLWIZ EDWINA ERRMSG FUNNGAME GLOBWIZ HARDCORE LOTABOUT \
    MERIWETHER REGTLB SIEVECLI TBEZIER TCOLLECT TCOLORPICK \
    TCOMPLETION TEDGE TENUM TEXECUTE TFOLDER TICON TIMAGE \
    TIMEIT TMESSAGE TPALETTE TPATHS TPIPE TREG TRES TSHARE \
    TSHORTCUT TSORT TSPLIT TSYSMENU TTHREAD TTIMER TWHIZ WINWATCH

ADDRESSOMATIC:   $(EXEDIR)\addressomatic.exe
ALLABOUT:        $(EXEDIR)\allabout.exe
BITBLAST:        $(EXEDIR)\bitblast.exe
BROWSE:          $(EXEDIR)\browse.exe
BUGWIZ:          $(EXEDIR)\bugwiz.exe
COLLWIZ:         $(EXEDIR)\collwiz.exe
EDWINA:          $(EXEDIR)\edwina.exe
ERRMSG:          $(EXEDIR)\errmsg.exe
FUNNGAME:        $(EXEDIR)\funngame.exe
GLOBWIZ:         $(EXEDIR)\globwiz.exe
HARDCORE:        $(EXEDIR)\hardcore.exe
LOTABOUT:        $(EXEDIR)\lotabout.exe
MERIWETHER:      $(EXEDIR)\meriwether.exe
REGTLB:          $(EXEDIR)\regtlb.exe
SIEVECLI:        $(EXEDIR)\sievecli.exe
TBEZIER:         $(EXEDIR)\tbezier.exe
TCOLLECT:        $(EXEDIR)\tcollect.exe
TCOLORPICK:      $(EXEDIR)\tcolorpick.exe
TCOMPLETION:     $(EXEDIR)\tcompletion.exe
TEDGE:           $(EXEDIR)\tedge.exe
TENUM:           $(EXEDIR)\tenum.exe
TEXECUTE:        $(EXEDIR)\texecute.exe
TFOLDER:         $(EXEDIR)\tfolder.exe
TICON:           $(EXEDIR)\ticon.exe
TIMAGE:          $(EXEDIR)\timage.exe
TIMEIT:          $(EXEDIR)\timeit.exe
TMESSAGE:        $(EXEDIR)\tmessage.exe
TPALETTE:        $(EXEDIR)\tpalette.exe
TPATHS:          $(EXEDIR)\tpaths.exe
TPIPE:           # *** deleted *** # $(EXEDIR)\tpipe.exe
TREG:            $(EXEDIR)\treg.exe
TRES:            $(EXEDIR)\tres.exe
TSHARE:          $(EXEDIR)\tshare.exe
TSHORTCUT:       $(EXEDIR)\tshortcut.exe
TSORT:           $(EXEDIR)\tsort.exe
TSPLIT:          $(EXEDIR)\tsplit.exe
TSYSMENU:        $(EXEDIR)\tsysmenu.exe
TTHREAD:         $(EXEDIR)\tthread.exe
TTIMER:          $(EXEDIR)\ttimer.exe
TWHIZ:           $(EXEDIR)\twhiz.exe
WINWATCH:        $(EXEDIR)\winwatch.exe

$(EXEDIR)\addressomatic.exe: # \
#        addromatic.frm addromatic.frx random.bas 
    $(VB5EXE) /m addromatic.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\allabout.exe: \
        allabout.frm allabout.frx debug.bas
    $(VB5EXE) /m allabout.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\bitblast.exe: \
        bitblast.frm bitblast.frx debug.bas 
    $(VB5EXE) /m bitblast.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\browse.exe: \
        browse.frm browse.frx debug.bas 
    $(VB5EXE) /m browse.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\bugwiz.exe: \
        bugwiz.frm bugwiz.frx bugfilt.cls bugwizmain.bas debug.bas 
    $(VB5EXE) /m bugwiz.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\collwiz.exe: # \
#        collwiz.frm collwiz.frx LocalModule\bytes.bas errors.bas utility.bas \
#        debug.bas 
    $(VB5EXE) /m collwiz.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\edwina.exe: \
        edwina.frm edwina.frx debug.bas 
    $(VB5EXE) /m edwina.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\errmsg.exe: \
        errmsg.frm errmsg.frx 
    $(VB5EXE) /m errmsg.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\funngame.exe: \
        fun.frm fun.frx debug.bas 
    $(VB5EXE) /m funngame.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\globwiz.exe: \
        globwiz.frm globwiz.frx globmodfilt.cls modglobfilt.cls \
        modglobdelfilt.cls privpubfilt.cls pubprivfilt.cls debug.bas 
    $(VB5EXE) /m globwiz.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\hardcore.exe: \
        hardcore.frm hardcore.frx menuitem.cls menulist.cls \
        debug.bas declare.bas
    $(VB5EXE) /m hardcore.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\lotabout.exe: # \
#        about.frm about.frx allabout.frm allabout.frx LocalModule\bytes.bas \
#        debug.bas enumvar.bas errors.bas modtool.bas parse.bas \
#        proctool.bas random.bas shared.bas utility.bas wintool.bas \
#        drivewlk.cls enumvar.cls module.cls p_about.cls p_butterfly.cls \
#        p_drive.cls p_drives.cls p_ianimation.cls p_ivarwlk.cls \
#        p_iwinhelp.cls p_keyboard.cls p_system.cls p_vector.cls \
#        p_version.cls p_video.cls vectorwlk.cls
    $(VB5EXE) /m lotabout.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\meriwether.exe: \
        meriwether.frm meriwether.frx debug.bas
    $(VB5EXE) /m meriwether.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\regtlb.exe: \
        regtlb.bas
    $(VB5EXE) /m regtlb.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\sievecli.exe: \
        sievecli.frm sievecli.frx sieve.cls sieve.bas
    $(VB5EXE) /m sievecli.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tbezier.exe: # \
#        tbezier.frm tbezier.frx LocalModule\bytes.bas debug.bas errors.bas \
#        gditool.bas utility.bas
    $(VB5EXE) /m tbezier.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tcollect.exe: \
        tcollect.frm tcollect.frx driveso.cls istack.cls \
        link.cls stackcol.cls stacklst.cls stackvec.cls debug.bas
    $(VB5EXE) /m tcollect.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tcolorpick.exe: \
        tcolorpick.frm tcolorpick.frx debug.bas
    $(VB5EXE) /m tcolorpick.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tcompletion.exe: \
        tcompletion.frm tcompletion.frx
    $(VB5EXE) /m tcompletion.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tedge.exe: \
        tedge.frm tedge.frx debug.bas
    $(VB5EXE) /m tedge.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tenum.exe: \
        testenum.frm testenum.frx debug.bas enumproc.bas
    $(VB5EXE) /m tenum.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\texecute.exe: \
        texecute.frm texecute.frx debug.bas
    $(VB5EXE) /m texecute.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tfolder.exe: \
        tfolder.frm tfolder.frx debug.bas
    $(VB5EXE) /m tfolder.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\ticon.exe: \
        ticon.frm ticon.frx debug.bas
    $(VB5EXE) /m ticon.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\timage.exe: \
        timage.frm timage.frx
    $(VB5EXE) /m timage.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\timeit.exe: # \
#        timeit.frm timeit.frx null.cls problem.cls debug.bas \
#        sortold.bas sortrec.bas timeit.bas tsort.bas
    $(VB5EXE) /m timeit.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tmessage.exe: \
        tmessage.frm tmessage.frx debug.bas
    $(VB5EXE) /m tmessage.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tpalette.exe: \
        tpalette.frm tpalette.frx
    $(VB5EXE) /m tpalette.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tpaths.exe: \
        tpaths.frm tpaths.frx
    $(VB5EXE) /m tpaths.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tpipe.exe: \
        tpipe.frm tpipe.frx debug.bas
    $(VB5EXE) /m tpipe.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\treg.exe: \
        treg.frm treg.frx debug.bas
    $(VB5EXE) /m treg.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tres.exe: # \
#        tres.frm tres.frx bytes.bas debug.bas errors.bas utility.bas \
#        tres.res
    $(VB5EXE) /m tres.vbp /outdir $(EXEDIR) /d $(EXECONST)

tres.res: \
        tres.rc
    $(RCEXE) /v /d US /r /fo tresus.res tres.rc
    RENAME tresus.res tres.res

$(EXEDIR)\tshare.exe: \
        tshare.frm tshare.frx debug.bas
    $(VB5EXE) /m tshare.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tshortcut.exe: \
        tshortcut.frm tshortcut.frx debug.bas
    $(VB5EXE) /m tshortcut.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tsort.exe: \
        tsort.frm tsort.frx slistbox.cls debug.bas
    $(VB5EXE) /m tsort.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tsplit.exe: \
        tsplit.frm tsplit.frx
    $(VB5EXE) /m tsplit.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tsysmenu.exe: \
        tsysmenu.frm tsysmenu.frx tsysmenu.bas
    $(VB5EXE) /m tsysmenu.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\tthread.exe: \
        tthread.frm tthread.frx thread.bas
    $(VB5EXE) /m tthread.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\ttimer.exe: \
        ttimer.frm ttimer.frx
    $(VB5EXE) /m ttimer.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\twhiz.exe: \
        twhiz.frm twhiz.frx debug.bas
    $(VB5EXE) /m twhiz.vbp /outdir $(EXEDIR) /d $(EXECONST)

$(EXEDIR)\winwatch.exe: \
        winwatch.frm winwatch.frx wfilehlp.cls wformhlp.cls \
        winfind.cls debug.bas resproc.bas tres.res
    $(VB5EXE) /m winwatch.vbp /outdir $(EXEDIR) /d $(EXECONST)
