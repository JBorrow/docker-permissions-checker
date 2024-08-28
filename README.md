Permissions Checker
===================

A tiny docker image for checking the default permissions and group
ownership of files created by the user inside the docker image.

By default, this leaves the file that is created so it can be checked
externally. You can delete the file automatically afterwards by using
the environment variable `$DELETE_FILE_AFTER_PERMISSIONS_CHECK`.
Any value for this variable will delete the file. Unset it if you 
want to keep them around.

You will need to bind-mount your directory to `/example` in the
container.
