# Rails File API

This is a file API for a coding challenge.


## API Endpoints

- `GET /fs_items` Returns JSON of top level files
- `GET /fs_items/:id` Returns JSON of a specific file by integer ID
- `PUT /fs_items/:id` Updates information (name, parent_id) for a given file
- `POST /fs_items` Creates a new file system item
- `DELETE /fs_items/:id` Deletes a file system item

Files and directories are very similar, except in that file system items can refer to directories as their parent container, and if the size property is implemented for files it will refer to a binary blog size and for a directory it will be the sum size of sub items (require caching for performance).
