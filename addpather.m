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
