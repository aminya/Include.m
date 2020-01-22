%% AddPather.m
% Copyright (c) 2020 Amin Yahyaabadi - aminyahyaabadi74@gmail.com

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function addpather(method, varargin)
    % addpather function
    %
    % # Arguments:
    % addpather(method::String, [folders::Array{String}/Cell{Char}])
    %
    %  - method: can be "all","all_exclude","specific","GUI_all","GUI_specific"
    %  - folders (optional):
    %   - if method is "all_exclude": pass the folder names that should be excluded
    %   - if method is "specific": pass the folder names that should be included
    %
    %  Folders specified in the 2nd argument can have a relative as well as absolute path.
    % 
    % # Example run_addpather
    % Choose the method, and run the script.
    % ```matlab
    % % runs the function:
    % addpather("all");
    %
    % clear method;
    % ```
    %
    % Pass a 2nd output to include/exclude specific folders if you chose "all_exclude" or "specificFolders"
    % ```matlab
    % % runs the function:
    % addpather("specific", ["src", "examples"]); % or addpather("specific", {'src', 'examples'});
    %
    % clear method;
    % ```


    switch method

        %% To include all
        case "all"

            addpath(pwd);   % add root folder

            % add subfolders
            folders=dirFolder(pwd);
            for i=1:length(folders)
                addpath(genpath(folders{i}))
            end

            disp("Folders of current working and their subfolders are added to the path");

        %% To include all excluding some folders
        case "all_exclude"

            % folders to be excluded
            excludedFolders = varargin{1};

            addpath(pwd);   % add root folder

            folders=dirFolder(pwd); % all folders

            % folders to be included
            includedFolders=folders(~ismember(folders,excludedFolders));

            for  i=1:length(includedFolders)
                addpath(genpath(includedFolders{i}))
            end

            disp("Folders of current working and their subfolders excluding those specified are added to the path");

end

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [folders] = dirFolder(parentDir)
    % get folder names in a directory

    % modified from https://www.mathworks.com/matlabcentral/answers/166629-is-there-any-way-to-list-all-folders-only-in-the-level-directly-below-a-selected-directory#comment_624696

    all    = dir(parentDir); %list of all files and folders
    names    = {all.name};
    % seperating folders indeces
    idxFolder = [all.isdir] & ~strcmp(names, '.') & ~strcmp(names, '..');

    % Extract only those that are directories.
    folders = names(idxFolder);
end
