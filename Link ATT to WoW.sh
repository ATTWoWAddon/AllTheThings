#!/bin/zsh
set -e

link_wowfolder() {
    if [[ -d "$1" ]]; then
        link_expansion "$1/_classic_"
        link_expansion "$1/_classic_era_"
        link_expansion "$1/_classic_beta_"
        link_expansion "$1/_classic_ptr_"
        link_expansion "$1/_classic_era_ptr_"
        link_expansion "$1/_retail_"
        link_beta "$1/_beta_"
        link_ptr "$1/_ptr_"
        link_ptr "$1/_xptr_"
    fi
}

link_expansion() {
    if [[ -d "$1" ]]; then
        echo "Linking Expansion $1"
        if [[ -d "$1/Interface/AddOns/AllTheThings" ]]; then
            echo "Removing ATT in $1"
            rm -rf "$1/Interface/AddOns/AllTheThings"
        fi
        if [[ ! -d "$1/Interface/AddOns/AllTheThings" ]]; then
            echo "Adding ATT in $1"
            mkdir -p "$1/Interface/AddOns"
            rsync -a  --link-dest="$PWD/" --exclude='.*' "$PWD/" "$1/Interface/AddOns/AllTheThings"
        fi
    fi
}

link_beta() {
    if [[ -d "$1" ]]; then
        echo "Linking BETA $1"
        link_beta_files "$1/Interface/AddOns/AllTheThings"
    fi
}

link_beta_files() {
    echo "Linking BETA Files $1"
    if [[ -d "$1" ]]; then
        rm -rf "$1"
    fi
    if [[ ! -d "$1" ]]; then
        mkdir -p "$1/db/Standard"
        rsync -a --link-dest="$PWD/db/.beta/Categories/" "$PWD/db/.beta/Categories/" "$1/db/Standard/Categories"
        rsync -a "$PWD/db/.beta/Categories.xml" "$1/db/Standard/Categories.xml"
        rsync -a "$PWD/db/.beta/LocalizationDB.lua" "$1/db/Standard/LocalizationDB.lua"
        rsync -a "$PWD/db/.beta/ReferenceDB.lua" "$1/db/Standard/ReferenceDB.lua"

        rsync -a --link-dest="$PWD/assets/" "$PWD/assets/" "$1/assets"
        rsync -a --link-dest="$PWD/lib/" "$PWD/lib/" "$1/lib"
        rsync -a --link-dest="$PWD/locales/" "$PWD/locales/" "$1/locales"
        rsync -a --link-dest="$PWD/src/" "$PWD/src/" "$1/src"

        rsync -a "$PWD/AllTheThings.lua" "$1/AllTheThings.lua"
        rsync -a "$PWD/AllTheThings.toc" "$1/AllTheThings.toc"
        rsync -a "$PWD/Bindings.xml" "$1/Bindings.xml"
    fi
}

link_ptr() {
    if [[ -d "$1" ]]; then
        echo "Linking PTR $1"
        link_ptr_files "$1/Interface/AddOns/AllTheThings"
    fi
}

link_ptr_files() {
    echo "Linking PTR Files $1"
    if [[ -d "$1" ]]; then
        rm -rf "$1"
    fi
    if [[ ! -d "$1" ]]; then
        mkdir -p "$1/db/Standard"
        rsync -a --link-dest="$PWD/db/.ptr/Categories/" "$PWD/db/.ptr/Categories/" "$1/db/Standard/Categories"
        rsync -a "$PWD/db/.ptr/Categories.xml" "$1/db/Standard/Categories.xml"
        rsync -a "$PWD/db/.ptr/LocalizationDB.lua" "$1/db/Standard/LocalizationDB.lua"
        rsync -a "$PWD/db/.ptr/ReferenceDB.lua" "$1/db/Standard/ReferenceDB.lua"

        rsync -a --link-dest="$PWD/assets/" "$PWD/assets/" "$1/assets"
        rsync -a --link-dest="$PWD/lib/" "$PWD/lib/" "$1/lib"
        rsync -a --link-dest="$PWD/locales/" "$PWD/locales/" "$1/locales"
        rsync -a --link-dest="$PWD/src/" "$PWD/src/" "$1/src"

        rsync -a "$PWD/AllTheThings.lua" "$1/AllTheThings.lua"
        rsync -a "$PWD/AllTheThings.toc" "$1/AllTheThings.toc"
        rsync -a "$PWD/Bindings.xml" "$1/Bindings.xml"
    fi
}

report_taskcomplete() {
    echo "Task Complete!"
}

# run the script
link_wowfolder "/Applications/World of Warcraft"
report_taskcomplete