[backgrounds full-avatars square-avatars] | each {|$directory|
    ls ('../' | path join $directory) | each {|$file|
        let name = $file.name | path parse | get stem
        let extension = $file.name | path parse | get extension
        if $extension == jpg {
            continue
        }
        krita $file.name --export --export-filename ('../' | path join $directory ((random uuid) + ".jpg"))
        rm $file.name
    }
}

null
