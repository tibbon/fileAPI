apps = FsItem.create(name: 'apps', kind: :directory)
bin = FsItem.create(name: 'bin', kind: :directory)
photos = FsItem.create(name: 'photos', kind: :directory)
music = FsItem.create(name: 'music', kind: :directory)

FsItem.create(name: 'Chrome', kind: :file, fs_item: apps)
FsItem.create(name: 'iPhoto', kind: :file, fs_item: apps)
FsItem.create(name: 'Final Cut Pro', kind: :file, fs_item: apps)
FsItem.create(name: 'Sublime Text 3', kind: :file, fs_item: apps)
FsItem.create(name: 'Lighttable', kind: :file, fs_item: apps)
FsItem.create(name: 'Eclipse', kind: :file, fs_item: apps)

FsItem.create(name: 'Smells Like Teen Spirit', kind: :file, fs_item: music)
FsItem.create(name: 'Thriller', kind: :file, fs_item: music)
FsItem.create(name: 'Born in the USA', kind: :file, fs_item: music)

techno = FsItem.create(name: 'techno', kind: :directory, fs_item: music)
FsItem.create(name: 'Breathe', kind: :file, fs_item: techno)
FsItem.create(name: 'Dance Dance', kind: :file, fs_item: techno)
FsItem.create(name: 'Boom Shake Dance', kind: :file, fs_item: techno)

FsItem.create(name: 'Grand Canyon', kind: :file, fs_item: photos)
FsItem.create(name: 'Black Rock City', kind: :file, fs_item: photos)
FsItem.create(name: 'Pacific Ocean', kind: :file, fs_item: photos)

FsItem.create(name: 'grep', kind: :file, fs_item: bin)
FsItem.create(name: 'ls', kind: :file, fs_item: bin)
FsItem.create(name: 'bash', kind: :file, fs_item: bin)
FsItem.create(name: 'touch', kind: :file, fs_item: bin)
FsItem.create(name: 'rm', kind: :file, fs_item: bin)
FsItem.create(name: 'awk', kind: :file, fs_item: bin)
FsItem.create(name: 'sed', kind: :file, fs_item: bin)
FsItem.create(name: 'vim', kind: :file, fs_item: bin)
FsItem.create(name: 'emacs', kind: :file, fs_item: bin)
FsItem.create(name: 'mkdir', kind: :file, fs_item: bin)
