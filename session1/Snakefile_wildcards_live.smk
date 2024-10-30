rule all:
    input:"output/count_{sample}.txt"

rule count_lines:
    input: "data/Bos_taurus.ARS-UCD1.2.110.primary_assembly.{sample}.gff3.gz"
    output: "output/count_{sample}.txt"
    shell:
        """
        gzcat {input} | wc -l > {output}
        """
 
