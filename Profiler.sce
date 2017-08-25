function result = Profiler(xcosFile)

    result = %f;
    rhs = argn(2);

    if(rhs == 1) then
        //save hdf5 file with xcos filename, just change extension
        [path,fname,extension] = fileparts(xcosFile);
        h5File = TMPDIR + filesep() + fname + ".sod";
        // open the file to check for permissions
        [a, err] = mopen(xcosFile, "r");
        if (err <> 0) then
            error(msprintf(gettext("Unable to open %s" + "\n"), xcosFile));
            return;
        end
        // construct a full path string
        fullPathName = get_absolute_file_path(fname + extension) + fname + extension;
        mclose(a);
    else
        error(msprintf(gettext("%s: Wrong number of input argument(s): %d expected." + "\n"), "importXcosDiagram", 1));
        return;
    end
    json_eg = mgetl("C:\Users\32914\Desktop\test\7\create.json");//you could use your own path
    //return scs_m in Scilab environment
    result = %t;
    scs_m= resume(json_eg);
    
endfunction
