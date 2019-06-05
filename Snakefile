include: "helper.snake"

PARAMS = PhasingHelper(config, "phasing")

onsuccess: PARAMS.onsuccess()
onerror: PARAMS.onerror()

rule all:
    input:
        PARAMS.outputs


include: "rules/link_sources.snake"
include: "rules/ccs_amplicon.snake"
include: "rules/haplotypes.snake"
