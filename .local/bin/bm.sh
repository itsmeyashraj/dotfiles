#!/usr/bin/sh

BROWSER="brave"

declare -a options=(

"1 - https://youtube.com"
"2 - https://facebook.com"
"3 - https://reddit.com"
"4 - https://monkeytype.com"
"5 - https://reddit.com/r/unixporn"
"6 - https://bleedinggreennation.com"
"7 - https://tumblr.com"
"8 - https://distrotoot.com/web/timelines/home"
"9 - https://odysee.com"
"10 - https://www.theverge.com/"
"11 - http://www.omgubuntu.co.uk/"
"12 - http://www.androidcentral.com/"
"13 - http://www.imore.com/"
"14 - http://www.macrumors.com/"
"15 - http://appleinsider.com/"
"16 - http://www.engadget.com/"
"17 - https://www.dedoimedo.com/index.html"
"18 - https://github.com"
"19 - https://www.thurrott.com/"
"20 - https://9to5linux.com/"
"6 - https://itsfoss.com/"
"6 - https://news.itsfoss.com/"
"HarmonyFFN - https://www.fanfiction.net/book/Harry-Potter/?&srt=1&lan=1&r=10&c1=1&c2=3"
"HonksFFN - https://www.fanfiction.net/book/Harry-Potter/?&srt=1&lan=1&r=10&c1=1&c2=549"
"HaphneFFN - https://www.fanfiction.net/book/Harry-Potter/?&srt=1&lan=1&r=10&c1=1&c2=5549"
"Tate - https://www.fanfiction.net/community/Tate-A-Thon/96648/99/0/1/0/0/2/0/"
"BBT_FFN - https://www.fanfiction.net/tv/Big-Bang-Theory/?&srt=1&lan=1&r=10"
"Portkey - https://www.portkey-archive.org/"
"HPFFA - http://www.hpfanficarchive.com/stories/browse.php?type=categories&catid=190"
"Harmony_Ao3 - http://archiveofourown.org/tags/Hermione%20Granger*s*Harry%20Potter/works?page=1"
"PercabethAo3 - https://archiveofourown.org/works?utf8=%E2%9C%93&work_search%5Bsort_column%5D=revised_at&work_search%5Bother_tag_names%5D=&work_search%5Bexcluded_tag_names%5D=&work_search%5Bcrossover%5D=&work_search%5Bcomplete%5D=&work_search%5Bwords_from%5D=&work_search%5Bwords_to%5D=&work_search%5Bdate_from%5D=&work_search%5Bdate_to%5D=&work_search%5Bquery%5D=&work_search%5Blanguage_id%5D=en&commit=Sort+and+Filter&tag_id=Annabeth+Chase*s*Percy+Jackson"
"Haphne_Ao3 - https://archiveofourown.org/tags/Daphne%20Greengrass*s*Harry%20Potter/works"
"Josh_Donna_Ao3 - https://archiveofourown.org/tags/Josh%20Lyman*s*Donna%20Moss/works?page=1"
"TIVA_Ao3 - https://archiveofourown.org/tags/Ziva%20David*s*Anthony%20DiNozzo/works"
"Honks_Ao3 - https://archiveofourown.org/tags/Harry%20Potter*s*Nymphadora%20Tonks/works"
"Tate_Ao3 - https://archiveofourown.org/tags/Anthony%20DiNozzo*s*Caitlin%20Todd/works?page=2"
"Densi_Ao3 - https://archiveofourown.org/tags/Kensi%20Blye*s*Marty%20Deeks/works?page=1"
"CastleFFN - https://www.fanfiction.net/tv/Castle/?&srt=1&lan=1&r=10"
"Flowerpot_ao3 - https://archiveofourown.org/tags/Fleur%20Delacour*s*Harry%20Potter/works"
"Castle_Ao3 - https://archiveofourown.org/tags/Kate%20Beckett*s*Richard%20Castle/works"
"CHYOA - https://chyoa.com/"
"Typing1 - https://www.keyhero.com/free-typing-test/"
"TypeRacer - https://play.typeracer.com/"
"keybr - https://www.keybr.com/profile"



"quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 10 -p 'Bookmarks')


if [[ "$choice" == quit ]]; then
	echo "Program Terminated." && exit 1
elif [ "$choice" ]; then
	cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
	$BROWSER "$cfg"
else
	echo "Program Terminated." && exit 1
fi
