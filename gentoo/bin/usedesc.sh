#
# usedesc v1.2 - Search portage lists for Emerge Flag descriptions
# v1.0 - Original version (jwackito/Gentoo Forums)
# v1.1 - Added local use flag lists (dcoats/Gentoo Forums)
# v1.2 - Optimised grepping (tomk/Gentoo Forums)
#

printUse()
{
   echo
   echo "DESC:"
   echo "   Returns a flag description"
   echo "USAGE: "
   echo "   usedesc flag"
   echo
}

if [ $# == 1 ]; then
    FLAG=$1
else
    printUse
    exit 0
fi

if [ -f /usr/portage/profiles/use.desc ];then
   grep $FLAG /usr/portage/profiles/use.desc
else
   echo "Can't find /usr/portage/profiles/use.desc!!"
   exit 1
fi

if [ -f /usr/portage/profiles/use.local.desc ];then
        grep $FLAG /usr/portage/profiles/use.local.desc
else
        echo "Can't find /usr/portage/profiles/use.local.desc!!"
fi

if [ $? == 1 ];then
   echo "$FLAG: Not Match"
   echo "Some flags may still unlisted"
fi
