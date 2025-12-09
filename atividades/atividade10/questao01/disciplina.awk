BEGIN {
    print "Aluno:Situação:Média"
}

{
    if( NR > 1 ){
        media = ($2 + $3 + $4) / 3

        if (media >= 7) {
            status = "Aprovado"
        } else if (media >= 5){
            status = "Final"
        } else {
            status = "Reprovado"
        }

        printf "%s:%s:%.1f\n", $1, status, media

        s1 += $2
        s2 += $3
        s3 += $4
    }
}

END {
    printf "Média das Provas: %.1f %.1f %.1f\n", s1/(NR - 1), s2/(NR - 1), s3/(NR - 1)

}