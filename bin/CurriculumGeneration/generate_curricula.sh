echo("usage: generate_curricula.sh <input_file> <tutor_save_dir> <vocab_file>")
python sentence_length.py $1 sentence_length.tsv
sort -k 1 sentence_length.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.sentence_length
python pos.py $1 pos.tsv
sort -k 1 pos.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.pos
python dependency_parse.py $1 dep.tsv
sort -k 1 dep.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.dep
python self_tutoring.py $1 tutoring.tsv $2 $3
sort -k 1 tutoring.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.dep
python n-gram_entropy.py $1 unigram.tsv bigram.tsv trigram.tsv
sort -k 1 unigram.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.unigram
sort -k 1 bigram.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.bigram
sort -k 1 trigram.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.trigram
python ensemble_method.py $1 sentence_length.tsv pos.tsv dep.tsv tutoring.tsv unigram.tsv bigram.tsv trigram.tsv ensemble.tsv
sort -k 1 ensemble.tsv | tr "\t" "~" | cut -d"~" -f2 > $1.ensemble