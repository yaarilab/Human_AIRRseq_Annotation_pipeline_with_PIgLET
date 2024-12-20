$HOSTNAME = ""
params.outdir = 'results'  

//* params.nproc =  10  //* @input @description:"number of processes cores to use"
//* params.chain =  "IGH"  //* @input @description:"chain"

// Process Parameters for First_Alignment_IgBlastn:
params.First_Alignment_IgBlastn.num_threads = params.nproc
params.First_Alignment_IgBlastn.ig_seqtype = "Ig"
params.First_Alignment_IgBlastn.outfmt = "MakeDb"
params.First_Alignment_IgBlastn.num_alignments_V = "10"
params.First_Alignment_IgBlastn.domain_system = "imgt"


params.First_Alignment_MakeDb.failed = "true"
params.First_Alignment_MakeDb.format = "airr"
params.First_Alignment_MakeDb.regions = "default"
params.First_Alignment_MakeDb.extended = "true"
params.First_Alignment_MakeDb.asisid = "false"
params.First_Alignment_MakeDb.asiscalls = "false"
params.First_Alignment_MakeDb.inferjunction = "false"
params.First_Alignment_MakeDb.partial = "false"
params.First_Alignment_MakeDb.name_alignment = "First_Alignment"

// Process Parameters for First_Alignment_Collapse_AIRRseq:
params.First_Alignment_Collapse_AIRRseq_V2.name_alignment = "First_Alignment"
params.First_Alignment_Collapse_AIRRseq_V2.n_max = 10
params.First_Alignment_Collapse_AIRRseq_V2.ncores = 20

params.filter_dupcount.name_alignment = "First_Alignment"

// Process Parameters for Undocumented_Alleles:
params.Undocumented_Alleles.chain = params.chain
params.Undocumented_Alleles.num_threads = params.nproc
params.Undocumented_Alleles.germline_min = 200
params.Undocumented_Alleles.min_seqs = 50
params.Undocumented_Alleles.auto_mutrange = "true"
params.Undocumented_Alleles.mut_range = "1:10"
params.Undocumented_Alleles.pos_range = "1:318"
params.Undocumented_Alleles.y_intercept = 0.125
params.Undocumented_Alleles.alpha = 0.05
params.Undocumented_Alleles.j_max = 0.15
params.Undocumented_Alleles.min_frac = 0.75


// part 3

// Process Parameters for Second_Alignment_IgBlastn:
params.Second_Alignment_IgBlastn.num_threads = params.nproc
params.Second_Alignment_IgBlastn.ig_seqtype = "Ig"
params.Second_Alignment_IgBlastn.outfmt = "MakeDb"
params.Second_Alignment_IgBlastn.num_alignments_V = "10"
params.Second_Alignment_IgBlastn.domain_system = "imgt"

params.Second_Alignment_MakeDb.failed = "true"
params.Second_Alignment_MakeDb.format = "airr"
params.Second_Alignment_MakeDb.regions = "default"
params.Second_Alignment_MakeDb.extended = "true"
params.Second_Alignment_MakeDb.asisid = "false"
params.Second_Alignment_MakeDb.asiscalls = "false"
params.Second_Alignment_MakeDb.inferjunction = "false"
params.Second_Alignment_MakeDb.partial = "false"
params.Second_Alignment_MakeDb.name_alignment = "Second_Alignment"

// part 4

// Process Parameters for Clone_AIRRseq_First_CreateGermlines:
params.Clone_AIRRseq_First_CreateGermlines.failed = "false"
params.Clone_AIRRseq_First_CreateGermlines.format = "airr"
params.Clone_AIRRseq_First_CreateGermlines.g = "dmask"
params.Clone_AIRRseq_First_CreateGermlines.cloned = "false"
params.Clone_AIRRseq_First_CreateGermlines.seq_field = ""
params.Clone_AIRRseq_First_CreateGermlines.v_field = ""
params.Clone_AIRRseq_First_CreateGermlines.d_field = ""
params.Clone_AIRRseq_First_CreateGermlines.j_field = ""
params.Clone_AIRRseq_First_CreateGermlines.clone_field = ""

params.Clone_AIRRseq_DefineClones.failed = "false"
params.Clone_AIRRseq_DefineClones.format = "airr"
params.Clone_AIRRseq_DefineClones.seq_field = ""
params.Clone_AIRRseq_DefineClones.v_field = ""
params.Clone_AIRRseq_DefineClones.d_field = ""
params.Clone_AIRRseq_DefineClones.j_field = ""
params.Clone_AIRRseq_DefineClones.group_fields =  ""
params.Clone_AIRRseq_DefineClones.mode = "gene"
params.Clone_AIRRseq_DefineClones.dist = "0.2"
params.Clone_AIRRseq_DefineClones.norm = "len"
params.Clone_AIRRseq_DefineClones.act = "set"
params.Clone_AIRRseq_DefineClones.model = "hh_s5f"
params.Clone_AIRRseq_DefineClones.sym = "min"
params.Clone_AIRRseq_DefineClones.link = "single"
params.Clone_AIRRseq_DefineClones.maxmiss = "0"

// Process Parameters for Clone_AIRRseq_Second_CreateGermlines:
params.Clone_AIRRseq_Second_CreateGermlines.failed = "false"
params.Clone_AIRRseq_Second_CreateGermlines.format = "airr"
params.Clone_AIRRseq_Second_CreateGermlines.g = "dmask"
params.Clone_AIRRseq_Second_CreateGermlines.cloned = "true"
params.Clone_AIRRseq_Second_CreateGermlines.seq_field = ""
params.Clone_AIRRseq_Second_CreateGermlines.v_field = ""
params.Clone_AIRRseq_Second_CreateGermlines.d_field = ""
params.Clone_AIRRseq_Second_CreateGermlines.j_field = ""
params.Clone_AIRRseq_Second_CreateGermlines.clone_field = ""


// part 5

// Process Parameters for TIgGER_bayesian_genotype_Inference:
params.V_allele_based_genotype.call = "v_call"
params.V_allele_based_genotype.seq = "sequence_alignment"
params.V_allele_based_genotype.find_unmutated = "false"
params.V_allele_based_genotype.single_assignments = "false"


// Process Parameters for TIgGER_bayesian_genotype_Inference_d_call:
params.D_allele_based_genotype.call = "d_call"
params.D_allele_based_genotype.seq = "sequence_alignment"
params.D_allele_based_genotype.find_unmutated = "false"
params.D_allele_based_genotype.single_assignments = "true"


// Process Parameters for TIgGER_bayesian_genotype_Inference_j_call:
params.J_allele_based_genotype.call = "j_call"
params.J_allele_based_genotype.seq = "sequence_alignment"
params.J_allele_based_genotype.find_unmutated = "false"
params.J_allele_based_genotype.single_assignments = "true"


// part 6

// Process Parameters for Third_Alignment_IgBlastn:
params.Third_Alignment_IgBlastn.num_threads = params.nproc
params.Third_Alignment_IgBlastn.ig_seqtype = "Ig"
params.Third_Alignment_IgBlastn.outfmt = "MakeDb"
params.Third_Alignment_IgBlastn.num_alignments_V = "10"
params.Third_Alignment_IgBlastn.domain_system = "imgt"

params.Third_Alignment_MakeDb.failed = "true"
params.Third_Alignment_MakeDb.format = "airr"
params.Third_Alignment_MakeDb.regions = "default"
params.Third_Alignment_MakeDb.extended = "true"
params.Third_Alignment_MakeDb.asisid = "false"
params.Third_Alignment_MakeDb.asiscalls = "false"
params.Third_Alignment_MakeDb.inferjunction = "false"
params.Third_Alignment_MakeDb.partial = "false"
params.Third_Alignment_MakeDb.name_alignment = "Finale"

// part 7

// Process Parameters for ogrdbstats_report:
params.ogrdbstats_report.chain = "IGHV"


if (!params.v_germline){params.v_germline = ""} 
if (!params.d_germline){params.d_germline = ""} 
if (!params.j_germline){params.j_germline = ""} 
if (!params.airr_seq){params.airr_seq = ""} 
if (!params.allele_threshold_table){params.allele_threshold_table = ""} 
// Stage empty file to be used as an optional input where required
ch_empty_file_1 = file("$baseDir/.emptyfiles/NO_FILE_1", hidden:true)
ch_empty_file_2 = file("$baseDir/.emptyfiles/NO_FILE_2", hidden:true)
ch_empty_file_3 = file("$baseDir/.emptyfiles/NO_FILE_3", hidden:true)

Channel.fromPath(params.v_germline, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_2_germlineFastaFile_g_8;g_2_germlineFastaFile_g111_22;g_2_germlineFastaFile_g111_12}
Channel.fromPath(params.d_germline, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_3_germlineFastaFile_g_99;g_3_germlineFastaFile_g14_0;g_3_germlineFastaFile_g14_1;g_3_germlineFastaFile_g11_16;g_3_germlineFastaFile_g11_12;g_3_germlineFastaFile_g111_16;g_3_germlineFastaFile_g111_12}
Channel.fromPath(params.j_germline, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_4_germlineFastaFile_g_100;g_4_germlineFastaFile_g14_0;g_4_germlineFastaFile_g14_1;g_4_germlineFastaFile_g11_17;g_4_germlineFastaFile_g11_12;g_4_germlineFastaFile_g111_17;g_4_germlineFastaFile_g111_12}
Channel.fromPath(params.airr_seq, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_96_fastaFile_g111_12;g_96_fastaFile_g111_9}
Channel.fromPath(params.allele_threshold_table, type: 'any').map{ file -> tuple(file.baseName, file) }.into{g_101_outputFileTSV_g_98;g_101_outputFileTSV_g_99;g_101_outputFileTSV_g_100;g_101_outputFileTSV_g_97}


process Second_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_3_germlineFastaFile_g11_16

output:
 file "${db_name}"  into g11_16_germlineDb0_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Second_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_4_germlineFastaFile_g11_17

output:
 file "${db_name}"  into g11_17_germlineDb0_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_3_germlineFastaFile_g111_16

output:
 file "${db_name}"  into g111_16_germlineDb0_g111_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_4_germlineFastaFile_g111_17

output:
 file "${db_name}"  into g111_17_germlineDb0_g111_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_2_germlineFastaFile_g111_22

output:
 file "${db_name}"  into g111_22_germlineDb0_g111_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process First_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_96_fastaFile_g111_9
 file db_v from g111_22_germlineDb0_g111_9
 file db_d from g111_16_germlineDb0_g111_9
 file db_j from g111_17_germlineDb0_g111_9

output:
 set val(name), file("${outfile}") optional true  into g111_9_igblastOut0_g111_12

script:
num_threads = params.First_Alignment_IgBlastn.num_threads
ig_seqtype = params.First_Alignment_IgBlastn.ig_seqtype
outfmt = params.First_Alignment_IgBlastn.outfmt
num_alignments_V = params.First_Alignment_IgBlastn.num_alignments_V
domain_system = params.First_Alignment_IgBlastn.domain_system
auxiliary_data = params.First_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process First_Alignment_MakeDb {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_db-pass.tsv$/) "initial_annotation/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_db-fail.tsv$/) "initial_annotation/$filename"}
input:
 set val(name),file(fastaFile) from g_96_fastaFile_g111_12
 set val(name_igblast),file(igblastOut) from g111_9_igblastOut0_g111_12
 set val(name1), file(v_germline_file) from g_2_germlineFastaFile_g111_12
 set val(name2), file(d_germline_file) from g_3_germlineFastaFile_g111_12
 set val(name3), file(j_germline_file) from g_4_germlineFastaFile_g111_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g111_12_outputFileTSV0_g111_52
 set val("reference_set"), file("${reference_set}") optional true  into g111_12_germlineFastaFile11
 set val(name_igblast),file("*_db-fail.tsv") optional true  into g111_12_outputFileTSV22

script:

failed = params.First_Alignment_MakeDb.failed
format = params.First_Alignment_MakeDb.format
regions = params.First_Alignment_MakeDb.regions
extended = params.First_Alignment_MakeDb.extended
asisid = params.First_Alignment_MakeDb.asisid
asiscalls = params.First_Alignment_MakeDb.asiscalls
inferjunction = params.First_Alignment_MakeDb.inferjunction
partial = params.First_Alignment_MakeDb.partial
name_alignment = params.First_Alignment_MakeDb.name_alignment

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb_"+name_alignment+".fasta"

outname = name_igblast+'_'+name_alignment

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		--outname ${outname}\
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}


process First_Alignment_Collapse_AIRRseq_V2 {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outfile}+passed.tsv$/) "initial_annotation/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${name}+_process_log.txt$/) "initial_annotation_logs/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${outfile}+unfiltered.tsv$/) "initial_annotation/$filename"}
input:
 set val(name),file(airrSeq) from g111_12_outputFileTSV0_g111_52

output:
 set val(name), file("${outfile}"+"passed.tsv")  into g111_52_outputFileTSV0_g_8, g111_52_outputFileTSV0_g_80
 set val(name), file("${name}"+"_process_log.txt")  into g111_52_outputFileTxt11
 set val(name), file("${outfile}"+"unfiltered.tsv")  into g111_52_outputFileTSV2_g_112

script:
duplicate_count_min = params.First_Alignment_Collapse_AIRRseq_V2.duplicate_count_min
n_max = params.First_Alignment_Collapse_AIRRseq_V2.n_max
name_alignment = params.First_Alignment_Collapse_AIRRseq_V2.name_alignment
ncores = params.First_Alignment_Collapse_AIRRseq_V2.ncores

outfile = airrSeq.toString() - '.tsv' + name_alignment + "_collapsed-"
logFile = name+'_process_log.txt'
if(airrSeq.getName().endsWith(".tsv")){	
	"""
	#!/usr/bin/env Rscript
	# Load necessary libraries
	library(data.table)
	library(tigger)
	library(parallel)
	library(pbmcapply)
	
	# Define input and log file paths
	airrSeq <- "${airrSeq}"
	log_file <- "${logFile}"
	sample_name <- "${name}"
	
	# Define a logging function to print to both console and file
	log_message <- function(message) {
	  cat(message, "\n")                    # Print to console
	  cat(message, "\n", file = log_file, append = TRUE)  # Append to log file
	}
	
	# Start the log
	log_message("START > CollapseSeq")
	log_message(paste("FILE >", airrSeq))
	
	# Load data and count sequences
	data_sample <- fread(airrSeq)
	log_message(paste("SEQUENCES >", nrow(data_sample)))
	
	# Process sequence data
	data_sample[, replicate := stringi::stri_extract(sequence_id, regex = "rep[0-9]+")]
	data_sample[, sequence_start := stringi::stri_locate_first(sequence_alignment, regex = "[ATCGN]")[,1]]
	qv <- floor(quantile(data_sample[['sequence_start']], probs = 0.99))
	qj <- floor(quantile(data_sample[['j_germline_end']], probs = 0.99))
	data_sample[, sequence_end := (j_germline_end - qj)]
	data_sample[, sequence_end := ifelse(sequence_end < 0, 0, sequence_end)]
	data_sample[, sequence_trimmed := paste0(paste0(rep(".", (qv - 1)), collapse = ""),
	                                         substr(sequence_alignment, qv, (nchar(sequence_alignment) - sequence_end)))]
	data_sample[, sequence_start_trimmed := stringi::stri_locate_first(sequence_trimmed, regex = "[ATCGN]")[,1]]
	data_sample[, v_gene := alakazam::getGene(v_call, strip_d = FALSE, collapse = TRUE, first = FALSE)]
	data_sample[, j_gene := alakazam::getGene(j_call, strip_d = FALSE, collapse = TRUE, first = FALSE)]
	data_sample_filtered <- data_sample[sequence_start_trimmed >= qv & !grepl("-", sequence_trimmed) &
	                                    !grepl(",", v_gene) & !grepl(",", j_gene)]
	
	# Log filtered sequence count
	log_message(paste("SEQUENCES TO COLLAPSE>", nrow(data_sample_filtered)))
	
	# Prepare headers and sequences for collapsing
	data_sample_filtered[, group_id := paste(v_gene, junction_length, j_gene, sep = "_")]
	data_sample_filtered[, header := paste(sequence_id, paste0("replicate=", replicate), paste0("GROUP_ID=", group_id), sep="|")]
	data_sample_filtered[, sequence_collapse := gsub("[.]", "", sequence_trimmed)]
	
	# Define the main function to process each group
	process_group <- function(group) {
	  data_sample_sub <- data_sample_filtered[group_id == group]
	  seqs <- data_sample_sub[['sequence_collapse']]
	  seqs <- setNames(seqs, data_sample_sub[['header']])
	  file <- paste0(group, ".fasta")
	  tigger::writeFasta(seqs, file = file)
	  system(paste("CollapseSeq.py -s", file, "--fasta -n","${n_max}","--uf 'CLUSTER_ID' --cf 'replicate' --act set"),
	         ignore.stdout = TRUE, ignore.stderr = TRUE)
	  file.remove(file)
	  return(group)
	}
	
	if("${ncores}"==""){
		num_cores <- detectCores() - 1
	}else{
		num_cores <- as.numeric("${ncores}")
	}
	
	# Run process_group in parallel
	results <- pbmcapply::pbmclapply(unique(data_sample_filtered[['group_id']]), process_group, mc.cores = num_cores, ignore.interactive=TRUE)
	
	# Concatenate all output files
	file <- paste0(sample_name, "_collapse-unique_combined.fasta")
	system(paste0("cat ", "*_collapse-unique.fasta > ", file))
	system("rm *_collapse-unique.fasta")
	sequences_collapsed <- as.integer(strsplit(system(paste("grep -c '>'", file), intern = TRUE), " ")[[1]][1])
	log_message(paste("SEQUENCES COLLAPSED >", sequences_collapsed))
	
	# Run SplitSeq.py and get the count of duplicates
	#system(paste("SplitSeq.py group -s", file, "-f DUPCOUNT --num 2"), ignore.stdout = TRUE, ignore.stderr = TRUE)
	#file_atleast_2 <- paste0(sample_name, "_collapse-unique_atleast-2.fasta")
	
	# Count and log the sequence numbers for duplicate and replicate filtered files
	#sequences_duplicate_2 <- as.integer(strsplit(system(paste("grep -c '>'", file_atleast_2), intern = TRUE), " ")[[1]][1])
	#log_message(paste("SEQUENCES DUPLICATE>=2 >", sequences_duplicate_2))
	
	
	# Read collapsed sequences
	collapsed_seq <- tigger::readIgFasta(file, strip_down_name = FALSE)
	sequence_ids <- sapply(strsplit(names(collapsed_seq), "[|]"), "[[", 1)
	data_sample_collapsed <- data_sample[sequence_id %in% sequence_ids]
	
	# Add values from headers as columns
	header_info <- lapply(names(collapsed_seq), function(header) {
	  parts <- unlist(strsplit(header, "[|]"))
	  info <- sapply(parts[-1], function(part) {
	    kv <- unlist(strsplit(part, "="))
	    if (length(kv) == 2) kv[2] else NA
	  })
	  names(info) <- sapply(parts[-1], function(part) unlist(strsplit(part, "="))[1])
	  info
	})
	header_info_df <- as.data.frame(do.call(rbind, header_info), stringsAsFactors = FALSE)
	header_info_df[['sequence_id']] <- sequence_ids
	data_sample_collapsed <- merge.data.table(data_sample_collapsed, header_info_df, by = "sequence_id", all.x = TRUE)
	
	fwrite(data_sample_collapsed, file = paste0("${outfile}","unfiltered.tsv"), sep = "\t", quote = F, row.names = F)
	data_sample_collapsed <- data_sample_collapsed[as.numeric(DUPCOUNT)>1,]
	sequences_duplicate_2 <- nrow(data_sample_collapsed)
	log_message(paste("SEQUENCES DUPLICATE>=2 >", sequences_duplicate_2))
	
	data_sample_collapsed[,replicate_count:=(stringi::stri_count_fixed(REPLICATE, pattern=",")+1)]
	data_sample_collapsed <- data_sample_collapsed[replicate_count>1,]
	sequences_replicate_2 <- nrow(data_sample_collapsed)
	log_message(paste("SEQUENCES REPLICATE>=2 >", sequences_replicate_2))
	# Filter for productive sequences with J gene and log the final count
	data_sample_collapsed_filtered <- data_sample_collapsed[as.logical(productive) == TRUE & grepl("J", j_call),]
	
	fwrite(data_sample_collapsed_filtered, file = paste0("${outfile}","passed.tsv"), sep = "\t", quote = F, row.names = F)
	
	log_message(paste("SEQUENCES COLLAPSED PRODUCTIVE >", nrow(data_sample_collapsed_filtered)))
	
	log_message("Process complete.")

	
	"""
}else{
	"""
	
	"""
}

}

if(params.container.startsWith("peresay")){
	cmd = 'source("/usr/local/bin/functions_tigger.R")'
}else{
	cmd = 'library(tigger)'
}
process Undocumented_Alleles {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*novel-passed.tsv$/) "novel_report/$filename"}
input:
 set val(name),file(airr_file) from g111_52_outputFileTSV0_g_8
 set val(v_germline_name), file(v_germline_file) from g_2_germlineFastaFile_g_8

output:
 set val(name),file("*novel-passed.tsv") optional true  into g_8_outputFileTSV0_g_97
 set val("v_germline"), file("V_novel_germline.fasta") optional true  into g_8_germlineFastaFile1_g_70

script:
chain = params.Undocumented_Alleles.chain
num_threads = params.Undocumented_Alleles.num_threads
germline_min = params.Undocumented_Alleles.germline_min
min_seqs = params.Undocumented_Alleles.min_seqs
auto_mutrange = params.Undocumented_Alleles.auto_mutrange
mut_range = params.Undocumented_Alleles.mut_range
pos_range = params.Undocumented_Alleles.pos_range
y_intercept = params.Undocumented_Alleles.y_intercept
alpha = params.Undocumented_Alleles.alpha
j_max = params.Undocumented_Alleles.j_max
min_frac = params.Undocumented_Alleles.min_frac


out_novel_file = airr_file.toString() - ".tsv" + "_novel-passed.tsv"

out_novel_germline = "V_novel_germline"

"""
#!/usr/bin/env Rscript

${cmd}

# libraries
suppressMessages(require(dplyr))

# functions

## check for repeated nucliotide in sequece. get the novel allele and the germline sequence.
Repeated_Read <- function(x, seq) {
  NT <- as.numeric(gsub('([0-9]+).*', '\\1', x))
  SNP <- gsub('.*>', '', x)
  OR_SNP <- gsub('[0-9]+([[:alpha:]]*).*', '\\1', x)
  seq <- c(substr(seq, (NT), (NT + 3)),
           substr(seq, (NT - 1), (NT + 2)),
           substr(seq, (NT - 2), (NT + 1)),
           substr(seq, (NT - 3), (NT)))
  PAT <- paste0(c(
    paste0(c(rep(SNP, 3), OR_SNP), collapse = ""),
    paste0(c(rep(SNP, 2), OR_SNP, SNP), collapse = ""),
    paste0(c(SNP, OR_SNP, rep(SNP, 2)), collapse = ""),
    paste0(c(OR_SNP, rep(SNP, 3)), collapse = "")
  ), collapse = '|')
  if (any(grepl(PAT, seq)))
    return(gsub(SNP, 'X', gsub(OR_SNP, 'z', seq[grepl(PAT, seq)])))
  else
    return(NA)
}

# read data and germline
data <- data.table::fread('${airr_file}', stringsAsFactors = F, data.table = F)
vgerm <- tigger::readIgFasta('${v_germline_file}')

# transfer groovy param to rsctipt
num_threads = as.numeric(${num_threads})
germline_min = as.numeric(${germline_min})
min_seqs = as.numeric(${min_seqs})
y_intercept = as.numeric(${y_intercept})
alpha = as.numeric(${alpha})
j_max = as.numeric(${j_max})
min_frac = as.numeric(${min_frac})
auto_mutrange = as.logical('${auto_mutrange}')
mut_range = as.numeric(unlist(strsplit('${mut_range}',":")))
mut_range = mut_range[1]:mut_range[2]
pos_range = as.numeric(unlist(strsplit('${pos_range}',":")))
pos_range = pos_range[1]:pos_range[2]


novel =  try(findNovelAlleles(
data = data,
germline_db = vgerm,
v_call = 'v_call',
j_call = 'j_call' ,
seq = 'sequence_alignment',
junction = 'junction',
junction_length = 'junction_length',
germline_min = germline_min,
min_seqs = min_seqs,
y_intercept = y_intercept,
alpha = alpha,
j_max = j_max,
min_frac = min_frac,
auto_mutrange = auto_mutrange,
mut_range = mut_range,
pos_range = pos_range,
nproc = num_threads
))
	
  
# select only the novel alleles
if (class(novel) != 'try-error') {

	if (nrow(novel) != 0) {
		novel <- tigger::selectNovel(novel)
		novel <- novel %>% dplyr::distinct(novel_imgt, .keep_all = TRUE) %>% 
		dplyr::filter(!is.na(novel_imgt), nt_substitutions!='') %>% 
		dplyr::mutate(gene = alakazam::getGene(germline_call, strip_d = F)) %>%
		dplyr::group_by(gene) %>% dplyr::top_n(n = 2, wt = novel_imgt_count)
	}
	
	## remove padded alleles
	print(novel)
	
	if (nrow(novel) != 0) {
		SNP_XXXX <- unlist(sapply(1:nrow(novel), function(i) {
		  subs <- strsplit(novel[['nt_substitutions']][i], ',')[[1]]
		  RR <-
		    unlist(sapply(subs,
		           Repeated_Read,
		           seq = novel[['germline_imgt']][i],
		           simplify = F))
		  RR <- RR[!is.na(RR)]
		  
		  length(RR) != 0
		}))
		
		novel <- novel[!SNP_XXXX, ]
		
		# remove duplicated novel alleles
		bool <- !duplicated(novel[['polymorphism_call']])
		novel <- novel[bool, ]
		
		# save novel output
		write.table(
		    novel,
		    file = '${out_novel_file}',
		    row.names = FALSE,
		    quote = FALSE,
		    sep = '\t'
		)
		
		# save germline
		novel_v_germline <- setNames(gsub('-', '.', novel[['novel_imgt']], fixed = T), novel[['polymorphism_call']])
		tigger::writeFasta(c(vgerm, novel_v_germline), paste0('${out_novel_germline}','.fasta'))
	}else{
		## write fake file
		file.copy(from = '${v_germline_file}', to = paste0('./','${out_novel_germline}','.fasta'))
		
		#file.create(paste0('${out_novel_germline}','.txt'))
		
	}
	
	
}else{
	file.copy(from = '${v_germline_file}', to = paste0('./','${out_novel_germline}','.fasta'))
	#file.create(paste0('${out_novel_germline}','.txt'))
}
"""


}

g_8_germlineFastaFile1_g_70= g_8_germlineFastaFile1_g_70.ifEmpty([""]) 


process change_names_fasta {

input:
 set val(name), file(v_ref) from g_8_germlineFastaFile1_g_70

output:
 set val(name), file("new_V_novel_germline*")  into g_70_germlineFastaFile0_g_94, g_70_germlineFastaFile0_g14_0, g_70_germlineFastaFile0_g14_1, g_70_germlineFastaFile0_g11_22, g_70_germlineFastaFile0_g11_12
 file "changes.csv" optional true  into g_70_outputFileCSV1_g_94


script:

readArray_v_ref = v_ref.toString().split(' ')[0]

if(readArray_v_ref.endsWith("fasta")){

"""
#!/usr/bin/env python3 

import pandas as pd
from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
from Bio import SeqIO
from hashlib import sha256 


def fasta_to_dataframe(file_path):
    data = {'ID': [], 'Sequence': []}
    with open(file_path, 'r') as file:
        for record in SeqIO.parse(file, 'fasta'):
            data['ID'].append(record.id)
            data['Sequence'].append(str(record.seq))

        df = pd.DataFrame(data)
        return df


file_path = '${readArray_v_ref}'  # Replace with the actual path
df = fasta_to_dataframe(file_path)


for index, row in df.iterrows():   
  if len(row['ID']) > 50:
    print("hoo")
    print(row['ID'])
    row['ID'] = row['ID'].split('*')[0] + '*' + row['ID'].split('*')[1].split('_')[0] + '_' + sha256(row['Sequence'].encode('utf-8')).hexdigest()[-4:]


def dataframe_to_fasta(df, output_file, description_column='Description', default_description=''):
    records = []

    for index, row in df.iterrows():
        sequence_record = SeqRecord(Seq(row['Sequence']), id=row['ID'])

        # Use the description from the DataFrame if available, otherwise use the default
        description = row.get(description_column, default_description)
        sequence_record.description = description

        records.append(sequence_record)

    with open(output_file, 'w') as output_handle:
        SeqIO.write(records, output_handle, 'fasta')

def save_changes_to_csv(old_df, new_df, output_file):
    changes = []
    for index, (old_row, new_row) in enumerate(zip(old_df.itertuples(), new_df.itertuples()), 1):
        if old_row.ID != new_row.ID:
            changes.append({'Row': index, 'Old_ID': old_row.ID, 'New_ID': new_row.ID})
    
    changes_df = pd.DataFrame(changes)
    if not changes_df.empty:
        changes_df.to_csv(output_file, index=False)
        
output_file_path = 'new_V_novel_germline.fasta'

dataframe_to_fasta(df, output_file_path)


file_path = '${readArray_v_ref}'  # Replace with the actual path
old_df = fasta_to_dataframe(file_path)

output_csv_file = "changes.csv"
save_changes_to_csv(old_df, df, output_csv_file)

"""
} else{
	
"""
#!/usr/bin/env python3 
	

file_path = 'new_V_novel_germline.txt'

with open(file_path, 'w'):
    pass
    
"""    
}    
}


process Second_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_70_germlineFastaFile0_g11_22

output:
 file "${db_name}"  into g11_22_germlineDb0_g11_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process airrseq_to_fasta {

input:
 set val(name), file(airrseq_data) from g111_52_outputFileTSV0_g_80

output:
 set val(name), file(outfile)  into g_80_germlineFastaFile0_g11_12, g_80_germlineFastaFile0_g11_9, g_80_germlineFastaFile0_g21_12, g_80_germlineFastaFile0_g21_9

script:

outfile = name+"_collapsed_seq.fasta"

"""
#!/usr/bin/env Rscript

data <- data.table::fread("${airrseq_data}", stringsAsFactors = F, data.table = F)

data_columns <- names(data)

# take extra columns after cdr3

idx_cdr <- which(data_columns=="cdr3")+1

add_columns <- data_columns[idx_cdr:length(data_columns)]

unique_information <- unique(c("sequence_id", "duplicate_count", "consensus_count", "c_call", add_columns))

unique_information <- unique_information[unique_information %in% data_columns]

seqs <- data[["sequence"]]

seqs_name <-
  sapply(1:nrow(data), function(x) {
    paste0(unique_information,
           rep('=', length(unique_information)),
           data[x, unique_information],
           collapse = '|')
  })
seqs_name <- gsub('sequence_id=', '', seqs_name, fixed = T)

tigger::writeFasta(setNames(seqs, seqs_name), "${outfile}")

"""
}


process Second_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_80_germlineFastaFile0_g11_9
 file db_v from g11_22_germlineDb0_g11_9
 file db_d from g11_16_germlineDb0_g11_9
 file db_j from g11_17_germlineDb0_g11_9

output:
 set val(name), file("${outfile}") optional true  into g11_9_igblastOut0_g11_12

script:
num_threads = params.Second_Alignment_IgBlastn.num_threads
ig_seqtype = params.Second_Alignment_IgBlastn.ig_seqtype
outfmt = params.Second_Alignment_IgBlastn.outfmt
num_alignments_V = params.Second_Alignment_IgBlastn.num_alignments_V
domain_system = params.Second_Alignment_IgBlastn.domain_system
auxiliary_data = params.Second_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process Second_Alignment_MakeDb {

input:
 set val(name),file(fastaFile) from g_80_germlineFastaFile0_g11_12
 set val(name_igblast),file(igblastOut) from g11_9_igblastOut0_g11_12
 set val(name1), file(v_germline_file) from g_70_germlineFastaFile0_g11_12
 set val(name2), file(d_germline_file) from g_3_germlineFastaFile_g11_12
 set val(name3), file(j_germline_file) from g_4_germlineFastaFile_g11_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g11_12_outputFileTSV0_g_94, g11_12_outputFileTSV0_g14_0, g11_12_outputFileTSV0_g14_9
 set val("reference_set"), file("${reference_set}") optional true  into g11_12_germlineFastaFile11
 set val(name_igblast),file("*_db-fail.tsv") optional true  into g11_12_outputFileTSV22

script:

failed = params.Second_Alignment_MakeDb.failed
format = params.Second_Alignment_MakeDb.format
regions = params.Second_Alignment_MakeDb.regions
extended = params.Second_Alignment_MakeDb.extended
asisid = params.Second_Alignment_MakeDb.asisid
asiscalls = params.Second_Alignment_MakeDb.asiscalls
inferjunction = params.Second_Alignment_MakeDb.inferjunction
partial = params.Second_Alignment_MakeDb.partial
name_alignment = params.Second_Alignment_MakeDb.name_alignment

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb_"+name_alignment+".fasta"

outname = name_igblast+'_'+name_alignment

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		--outname ${outname}\
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}

g_70_germlineFastaFile0_g14_0= g_70_germlineFastaFile0_g14_0.ifEmpty([""]) 
g_3_germlineFastaFile_g14_0= g_3_germlineFastaFile_g14_0.ifEmpty([""]) 
g_4_germlineFastaFile_g14_0= g_4_germlineFastaFile_g14_0.ifEmpty([""]) 


process Clone_AIRRseq_First_CreateGermlines {

input:
 set val(name),file(airrFile) from g11_12_outputFileTSV0_g14_0
 set val(name1), file(v_germline_file) from g_70_germlineFastaFile0_g14_0
 set val(name2), file(d_germline_file) from g_3_germlineFastaFile_g14_0
 set val(name3), file(j_germline_file) from g_4_germlineFastaFile_g14_0

output:
 set val(name),file("*_germ-pass.tsv")  into g14_0_outputFileTSV0_g14_2

script:
failed = params.Clone_AIRRseq_First_CreateGermlines.failed
format = params.Clone_AIRRseq_First_CreateGermlines.format
g = params.Clone_AIRRseq_First_CreateGermlines.g
cloned = params.Clone_AIRRseq_First_CreateGermlines.cloned
seq_field = params.Clone_AIRRseq_First_CreateGermlines.seq_field
v_field = params.Clone_AIRRseq_First_CreateGermlines.v_field
d_field = params.Clone_AIRRseq_First_CreateGermlines.d_field
j_field = params.Clone_AIRRseq_First_CreateGermlines.j_field
clone_field = params.Clone_AIRRseq_First_CreateGermlines.clone_field


failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "": "--format changeo"
g = "-g ${g}"
cloned = (cloned=="false") ? "" : "--cloned"

v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"

"""
CreateGermlines.py \
	-d ${airrFile} \
	-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
	${failed} \
	${format} \
	${g} \
	${cloned} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${clone_field} \
	--log CG_${name}.log 

"""



}


process Clone_AIRRseq_DefineClones {

input:
 set val(name),file(airrFile) from g14_0_outputFileTSV0_g14_2

output:
 set val(name),file("*_clone-pass.tsv")  into g14_2_outputFileTSV0_g14_1

script:
failed = params.Clone_AIRRseq_DefineClones.failed
format = params.Clone_AIRRseq_DefineClones.format
seq_field = params.Clone_AIRRseq_DefineClones.seq_field
v_field = params.Clone_AIRRseq_DefineClones.v_field
d_field = params.Clone_AIRRseq_DefineClones.d_field
j_field = params.Clone_AIRRseq_DefineClones.j_field
group_fields = params.Clone_AIRRseq_DefineClones.group_fields

mode = params.Clone_AIRRseq_DefineClones.mode
dist = params.Clone_AIRRseq_DefineClones.dist
norm = params.Clone_AIRRseq_DefineClones.norm
act = params.Clone_AIRRseq_DefineClones.act
model = params.Clone_AIRRseq_DefineClones.model
sym = params.Clone_AIRRseq_DefineClones.sym
link = params.Clone_AIRRseq_DefineClones.link
maxmiss = params.Clone_AIRRseq_DefineClones.maxmiss

failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "--format airr": "--format changeo"
group_fields = (group_fields=="") ? "" : "--gf ${group_fields}"
v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"


mode = (mode=="gene") ? "" : "--mode ${mode}"
norm = (norm=="len") ? "" : "--norn ${norm}"
act = (act=="set") ? "" : "--act ${act}"
model = (model=="ham") ? "" : "--model ${model}"
sym = (sym=="avg") ? "" : "--sym ${sym}"
link = (link=="single") ? "" : " --link ${link}"
    
	
"""
DefineClones.py -d ${airrFile} \
	${failed} \
	${format} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${group_fields} \
	${mode} \
	${act} \
	${model} \
	--dist ${dist} \
	${norm} \
	${sym} \
	${link} \
	--maxmiss ${maxmiss} \
	--log DF_.log  
"""



}

g_70_germlineFastaFile0_g14_1= g_70_germlineFastaFile0_g14_1.ifEmpty([""]) 
g_3_germlineFastaFile_g14_1= g_3_germlineFastaFile_g14_1.ifEmpty([""]) 
g_4_germlineFastaFile_g14_1= g_4_germlineFastaFile_g14_1.ifEmpty([""]) 


process Clone_AIRRseq_Second_CreateGermlines {

input:
 set val(name),file(airrFile) from g14_2_outputFileTSV0_g14_1
 set val(name1), file(v_germline_file) from g_70_germlineFastaFile0_g14_1
 set val(name2), file(d_germline_file) from g_3_germlineFastaFile_g14_1
 set val(name3), file(j_germline_file) from g_4_germlineFastaFile_g14_1

output:
 set val(name),file("*_germ-pass.tsv")  into g14_1_outputFileTSV0_g14_9

script:
failed = params.Clone_AIRRseq_Second_CreateGermlines.failed
format = params.Clone_AIRRseq_Second_CreateGermlines.format
g = params.Clone_AIRRseq_Second_CreateGermlines.g
cloned = params.Clone_AIRRseq_Second_CreateGermlines.cloned
seq_field = params.Clone_AIRRseq_Second_CreateGermlines.seq_field
v_field = params.Clone_AIRRseq_Second_CreateGermlines.v_field
d_field = params.Clone_AIRRseq_Second_CreateGermlines.d_field
j_field = params.Clone_AIRRseq_Second_CreateGermlines.j_field
clone_field = params.Clone_AIRRseq_Second_CreateGermlines.clone_field


failed = (failed=="true") ? "--failed" : ""
format = (format=="airr") ? "": "--format changeo"
g = "-g ${g}"
cloned = (cloned=="false") ? "" : "--cloned"

v_field = (v_field=="") ? "" : "--vf ${v_field}"
d_field = (d_field=="") ? "" : "--df ${d_field}"
j_field = (j_field=="") ? "" : "--jf ${j_field}"
seq_field = (seq_field=="") ? "" : "--sf ${seq_field}"

"""
CreateGermlines.py \
	-d ${airrFile} \
	-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
	${failed} \
	${format} \
	${g} \
	${cloned} \
	${v_field} \
	${d_field} \
	${j_field} \
	${seq_field} \
	${clone_field} \
	--log CG_${name}.log 

"""



}


process Clone_AIRRseq_single_clone_representative {

input:
 set val(name),file(airrFile) from g14_1_outputFileTSV0_g14_9
 set val(name1),file(source_airrFile) from g11_12_outputFileTSV0_g14_9

output:
 set val(outname),file("*_clone_rep-passed.tsv*")  into g14_9_outputFileTSV0_g_94
 file "*.pdf" optional true  into g14_9_outputFilePdf11
 set val(name), file("*txt")  into g14_9_logFile22
 file "*png"  into g14_9_outputFile33

script:
outname = airrFile.toString() - '.tsv' +"_clone_rep-passed"
outfile = outname + ".tsv"

"""
#!/usr/bin/env Rscript

## functions
# find the different position between sequences

src <- 
"#include <Rcpp.h>
using namespace Rcpp;
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <unordered_set>

// [[Rcpp::export]]

int allele_diff(std::vector<std::string> germs) {
    std::vector<std::vector<char>> germs_m;
    for (const std::string& germ : germs) {
        germs_m.push_back(std::vector<char>(germ.begin(), germ.end()));
    }

    int max_length = 0;
    for (const auto& germ : germs_m) {
        max_length = std::max(max_length, static_cast<int>(germ.size()));
    }

    for (auto& germ : germs_m) {
        germ.resize(max_length, '.'); // Pad with '.' to make all germs equal length
    }

    auto setdiff_mat = [](const std::vector<char>& x) -> int {
        std::unordered_set<char> unique_chars(x.begin(), x.end());
        std::unordered_set<char> filter_chars = { '.', 'N', '-' };
        int diff_count = 0;
        for (const char& c : unique_chars) {
            if (filter_chars.find(c) == filter_chars.end()) {
                diff_count++;
            }
        }
        return diff_count;
    };

    std::vector<int> idx;
    for (int i = 0; i < max_length; i++) {
        std::vector<char> column_chars;
        for (const auto& germ : germs_m) {
            column_chars.push_back(germ[i]);
        }
        int diff_count = setdiff_mat(column_chars);
        if (diff_count > 1) {
            idx.push_back(i);
        }
    }

    return idx.size();
}"

## libraries
require(dplyr)
library(Rcpp)
library(ggplot2)
sourceCpp(code = src)

data <- readr::read_tsv("${airrFile}")

source_data <- readr::read_tsv("${source_airrFile}")

# calculating mutation between IMGT sequence and the germline sequence, selecting a single sequence to each clone with the fewest mutations
data[["mut"]] <- sapply(1:nrow(data),function(j){
	x <- c(data[['sequence_alignment']][j], data[['germline_alignment_d_mask']][j])
	allele_diff(x)
})
# filter to the fewest mutations
data <- data %>% dplyr::group_by(clone_id) %>% 
			dplyr::mutate(clone_size = n())

data_report <- data %>% dplyr::rowwise() %>%
			dplyr::mutate(v_gene = alakazam::getGene(v_call, strip_d = FALSE)) %>%
			dplyr::group_by(v_gene, clone_id, clone_size) %>% dplyr::slice(1)

print(head(data_report))

p1 <- ggplot(data_report, aes(clone_size)) +
	geom_histogram(bins = 100) +
	facet_wrap(.~v_gene, ncol = 4)

ggsave("clone_distribution_by_v_call.pdf", p1, width = 12, height = 25)

max_clone_sizes <- data_report %>%
  group_by(v_gene) %>%
  summarize(max_clone_size = max(clone_size))

# Create a list of plots
plots <- lapply(seq(nrow(max_clone_sizes)), function(i) {
  ggplot(data_report %>% filter(v_gene == max_clone_sizes[i,"v_gene"]), aes(clone_size)) +
    geom_histogram(bins = max_clone_sizes[i,"max_clone_size"]) +
    ggtitle(paste("v_gene =", max_clone_sizes[i,"v_gene"]))
})

# Combine the list of plots into a single plot
library(gridExtra)
final_plot <- do.call(grid.arrange, plots)


ggsave("clone_distribution_by_v_call.png", final_plot, width = 30, height = 40)



data <- data %>% dplyr::group_by(clone_id) %>% dplyr::slice(which.min(mut))
cat(paste0('Note ', nrow(data),' sequences after selecting single representative'))
readr::write_tsv(data, file = "${outfile}")

x <- nrow(source_data)-nrow(data)

lines <- c(
    paste("START>", "After picking clonal representatives"),
    paste("PASS>", nrow(data)),
    paste("FAIL>", nrow(source_data)-nrow(data)),
    paste("END>", "After picking clonal representatives"),
    "",
    ""
  )


file_path <- paste("${outname}","output.txt", sep="-")

cat(lines, sep = "\n", file = file_path, append = TRUE)

"""
}

g_70_outputFileCSV1_g_94= g_70_outputFileCSV1_g_94.ifEmpty([""]) 
g14_9_outputFileTSV0_g_94= g14_9_outputFileTSV0_g_94.ifEmpty([""]) 


process change_germline_file_and_repertoire_file_names_back {

input:
 file csv from g_70_outputFileCSV1_g_94
 set val(name1), file(germline_file) from g_70_germlineFastaFile0_g_94
 set val(name_igblast),file(rep_file) from g11_12_outputFileTSV0_g_94
 set val(name2),file(clone_rep_file) from g14_9_outputFileTSV0_g_94

output:
 set val("${germline}"),file("${germline}")  into g_94_germlineFastaFile0_g_97
 set val("${rep}"), file("${rep}")  into g_94_outputFileTSV11
 set val("${clone_rep}"), file("${clone_rep}") optional true  into g_94_outputFileTSV2_g_97


script:


germline = germline_file.toString().split(' ')[0]
rep = rep_file.toString().split(' ')[0]
clone_rep = clone_rep_file.toString().split(' ')[0]
changes_csv = csv.toString().split(' ')[0]


"""

#!/usr/bin/env Rscript


# Check if changes.csv file exists
if (file.exists("changes.csv")) {

  # Read changes from CSV
  changes <- read.csv("changes.csv", header = FALSE, col.names = c("row", "old_id", "new_id"))

  # Process changes and modify TSV files
  for (change in 1:nrow(changes)) {
  
  
    old_id <- changes[change,"old_id"]
    new_id <- changes[change,"new_id"]
    
    asterisk_pos <- gregexpr("*", old_id, fixed = TRUE)[[1]]
    old_id <- substring(old_id, asterisk_pos[1] + 1)
    
    asterisk_pos <- gregexpr("*", new_id, fixed = TRUE)[[1]]
    new_id <- substring(new_id, asterisk_pos[1] + 1)

    
    # Modify genotype file
    
    system(paste("sed -i 's/", new_id, "/", old_id, "/g' ${rep}", sep = ""))
    
    system(paste("sed -i 's/", new_id, "/", old_id, "/g' ${clone_rep}", sep = ""))
    
    system(paste("sed -i 's/", new_id, "/", old_id, "/g' ${germline}", sep = ""))

  }


} else {
  cat("No changes.csv file found.")
}

"""

}


process asc_to_iuis {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*rep-passed_iuis_naming.tsv$/) "pre_genotype/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*novel-passed_iuis_naming.tsv$/) "novel_report/$filename"}
input:
 set val(name),file(airrFile) from g_94_outputFileTSV2_g_97
 set val(name1), file(germline_file) from g_94_germlineFastaFile0_g_97
 set val(name2),file(allele_threshold_table_file) from g_101_outputFileTSV_g_97
 set val(name3),file(novel_allele_file) from g_8_outputFileTSV0_g_97.ifEmpty('').view()

output:
 set val("${name}"),file("*rep-passed_iuis_naming.tsv")  into g_97_outputFileTSV0_g_98, g_97_outputFileTSV0_g_99, g_97_outputFileTSV0_g_100
 set val("${name1}"),file("v_germline_iuis_naming.fasta")  into g_97_germlineFastaFile1_g_98
 set val("${name}"),file("*novel-passed_iuis_naming.tsv") optional true  into g_97_outputFileTSV22

script:

novel_allele = novel_allele_file ?: ""

"""
#!/usr/bin/env Rscript
library(data.table)
library(tigger)

germline_db <- readIgFasta("${germline_file}")

repertoire <- fread("${airrFile}")

allele_threshold_table <- fread("${allele_threshold_table_file}")

if(length(germline_db)>0){
	
	if(any(grepl("_", names(germline_db)))){
		
		alleles <- grep("_", names(germline_db), value=T)
		
		for(a in alleles){
			a_split <- unlist(strsplit(a, "_"))
			base_allele <- a_split[1]
			snps <- paste0(a_split[2:length(a_split)], collapse="_")
			base_threshold <- allele_threshold_table[asc_allele==base_allele,]
			if(nrow(base_threshold)!=0){
				iuis_allele <- paste0(base_threshold[["allele"]],"_",snps)
				base_threshold[["asc_allele"]]=a
				base_threshold[["allele"]]=iuis_allele
				allele_threshold_table <- rbind(
					allele_threshold_table,
					base_threshold
				)
			}
		}
		
	}
	
}

allele_threshold_table_reference <- setNames(allele_threshold_table[["allele"]], allele_threshold_table[["asc_allele"]])


germline_db_dup <- germline_db

names(germline_db_dup) <- sapply(names(germline_db_dup), function(a) allele_threshold_table_reference[a])

repertoire[["v_call"]] <- sapply(repertoire[["v_call"]], function(x) {
      calls <- unlist(strsplit(x, ","))
      calls <- allele_threshold_table_reference[calls]
      calls <- calls[!duplicated(calls)]
      paste0(calls, collapse = ",")
    }, USE.NAMES = F)

file_out <- tools::file_path_sans_ext("${airrFile}")

fwrite(repertoire, paste0(file_out,"_iuis_naming.tsv"), sep = "\t", quote = F, row.names = F)
writeFasta(germline_db_dup, "v_germline_iuis_naming.fasta")

if(file.exists("${novel_allele}")){
	novel_df <- fread("${novel_allele}")
	novel_df[["germline_call"]] <- sapply(novel_df[["germline_call"]], function(x) {
      calls <- unlist(strsplit(x, ","))
      calls <- allele_threshold_table_reference[calls]
      calls <- calls[!duplicated(calls)]
      paste0(calls, collapse = ",")
    }, USE.NAMES = F)
    novel_df[["gene"]] <- alakazam::getGene(novel_df[["germline_call"]], strip_d = FALSE, omit_nl = FALSE)
    novel_df[["polymorphism_call"]] <- sapply(novel_df[["polymorphism_call"]], function(x) {
      calls <- unlist(strsplit(x, ","))
      calls <- allele_threshold_table_reference[calls]
      calls <- calls[!duplicated(calls)]
      paste0(calls, collapse = ",")
    }, USE.NAMES = F)
    
    file_out <- tools::file_path_sans_ext("${novel_allele}")

    fwrite(novel_df, paste0(file_out,"_iuis_naming.tsv"), sep = "\t", quote = F, row.names = F)

}

"""
}


process J_allele_based_genotype {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "genotype_report/$filename"}
input:
 set val(name),file(airrFile) from g_97_outputFileTSV0_g_100
 set val(name1), file(germline_file) from g_4_germlineFastaFile_g_100
 set val(name2),file(allele_threshold_table_file) from g_101_outputFileTSV_g_100

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_100_outputFileTSV00
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_100_germlineFastaFile1_g21_17, g_100_germlineFastaFile1_g21_12

script:

// general params
call = params.J_allele_based_genotype.call
seq = params.J_allele_based_genotype.seq
find_unmutated = params.J_allele_based_genotype.find_unmutated

// ASC specific params
single_assignment = params.J_allele_based_genotype.single_assignment
z_threshold = params.J_allele_based_genotype.z_threshold
germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"

"""
#!/usr/bin/env Rscript

library(piglet)
library(tigger)
library(data.table)
library(dplyr)

if("${allele_threshold_table_file}" == ""){
	stop("No allele threshold table supplied")
}else{
	allele_threshold_table <- fread("${allele_threshold_table_file}")
}


# read the data
data <- fread("${airrFile}", data.table=FALSE)
# read the germline db
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA
# check params
find_unmutated <- "${find_unmutated}"=="true"
single_assignment <- "${single_assignment}"=="true"


## if any novel allele in the reference set add them with the threshold of the base allele

if(length(germline_db)>0){
	
	if(any(grepl("_", names(germline_db)))){
		
		alleles <- grep("_", names(germline_db), value=T)
		
		for(a in alleles){
			a_split <- unlist(strsplit(a, "_"))
			base_allele <- a_split[1]
			snps <- paste0(a_split[2:length(a_split)], collapse="_")
			base_threshold <- allele_threshold_table[asc_allele==base_allele,]
			if(nrow(base_threshold)!=0){
				iuis_allele <- paste0(base_threshold[["allele"]],"_",snps)
				base_threshold[["asc_allele"]]=a
				base_threshold[["allele"]]=iuis_allele
				allele_threshold_table <- rbind(
					allele_threshold_table,
					base_threshold
				)
			}
		}
		
	}
	
}



# infer the genotype
geno <- piglet::inferGenotypeAllele(data, 
									allele_threshold_table = allele_threshold_table, 
									germline_db = germline_db, 
									find_unmutated = find_unmutated,
									call = "${call}",
        							seq = "${seq}",
        							single_assignment = single_assignment,
									)

write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

geno <- geno[geno[["z_score"]]>=${z_threshold}]

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  allele <- geno[["allele"]][i]
  IND <- names(germline_db) %in%  allele
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}


process Third_Alignment_J_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_100_germlineFastaFile1_g21_17

output:
 file "${db_name}"  into g21_17_germlineDb0_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process D_allele_based_genotype {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "genotype_report/$filename"}
input:
 set val(name),file(airrFile) from g_97_outputFileTSV0_g_99
 set val(name1), file(germline_file) from g_3_germlineFastaFile_g_99
 set val(name2),file(allele_threshold_table_file) from g_101_outputFileTSV_g_99

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_99_outputFileTSV00
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_99_germlineFastaFile1_g21_16, g_99_germlineFastaFile1_g21_12

script:

// general params
call = params.D_allele_based_genotype.call
seq = params.D_allele_based_genotype.seq
find_unmutated = params.D_allele_based_genotype.find_unmutated

// ASC specific params
single_assignment = params.D_allele_based_genotype.single_assignment
z_threshold = params.D_allele_based_genotype.z_threshold
germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"

"""
#!/usr/bin/env Rscript

library(piglet)
library(tigger)
library(data.table)
library(dplyr)

if("${allele_threshold_table_file}" == ""){
	stop("No allele threshold table supplied")
}else{
	allele_threshold_table <- fread("${allele_threshold_table_file}")
}


# read the data
data <- fread("${airrFile}", data.table=FALSE)
# read the germline db
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA
# check params
find_unmutated <- "${find_unmutated}"=="true"
single_assignment <- "${single_assignment}"=="true"


## if any novel allele in the reference set add them with the threshold of the base allele

if(length(germline_db)>0){
	
	if(any(grepl("_", names(germline_db)))){
		
		alleles <- grep("_", names(germline_db), value=T)
		
		for(a in alleles){
			a_split <- unlist(strsplit(a, "_"))
			base_allele <- a_split[1]
			snps <- paste0(a_split[2:length(a_split)], collapse="_")
			base_threshold <- allele_threshold_table[asc_allele==base_allele,]
			if(nrow(base_threshold)!=0){
				iuis_allele <- paste0(base_threshold[["allele"]],"_",snps)
				base_threshold[["asc_allele"]]=a
				base_threshold[["allele"]]=iuis_allele
				allele_threshold_table <- rbind(
					allele_threshold_table,
					base_threshold
				)
			}
		}
		
	}
	
}



# infer the genotype
geno <- piglet::inferGenotypeAllele(data, 
									allele_threshold_table = allele_threshold_table, 
									germline_db = germline_db, 
									find_unmutated = find_unmutated,
									call = "${call}",
        							seq = "${seq}",
        							single_assignment = single_assignment,
									)

write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

geno <- geno[geno[["z_score"]]>=${z_threshold}]

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  allele <- geno[["allele"]][i]
  IND <- names(germline_db) %in%  allele
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}


process Third_Alignment_D_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_99_germlineFastaFile1_g21_16

output:
 file "${db_name}"  into g21_16_germlineDb0_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process V_allele_based_genotype {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${call}_genotype_report.tsv$/) "genotype_report/$filename"}
input:
 set val(name),file(airrFile) from g_97_outputFileTSV0_g_98
 set val(name1), file(germline_file) from g_97_germlineFastaFile1_g_98
 set val(name2),file(allele_threshold_table_file) from g_101_outputFileTSV_g_98

output:
 set val("${call}_genotype"),file("${call}_genotype_report.tsv")  into g_98_outputFileTSV00
 set val("${call}_personal_reference"), file("${call}_personal_reference.fasta")  into g_98_germlineFastaFile1_g_95

script:

// general params
call = params.V_allele_based_genotype.call
seq = params.V_allele_based_genotype.seq
find_unmutated = params.V_allele_based_genotype.find_unmutated

// ASC specific params
single_assignment = params.V_allele_based_genotype.single_assignment
z_threshold = params.V_allele_based_genotype.z_threshold
germline_file = germline_file.name.startsWith('NO_FILE') ? "" : "${germline_file}"

"""
#!/usr/bin/env Rscript

library(piglet)
library(tigger)
library(data.table)
library(dplyr)

if("${allele_threshold_table_file}" == ""){
	stop("No allele threshold table supplied")
}else{
	allele_threshold_table <- fread("${allele_threshold_table_file}")
}


# read the data
data <- fread("${airrFile}", data.table=FALSE)
# read the germline db
germline_db <- if("${germline_file}"!="") readIgFasta("${germline_file}") else NA
# check params
find_unmutated <- "${find_unmutated}"=="true"
single_assignment <- "${single_assignment}"=="true"


## if any novel allele in the reference set add them with the threshold of the base allele

if(length(germline_db)>0){
	
	if(any(grepl("_", names(germline_db)))){
		
		alleles <- grep("_", names(germline_db), value=T)
		
		for(a in alleles){
			a_split <- unlist(strsplit(a, "_"))
			base_allele <- a_split[1]
			snps <- paste0(a_split[2:length(a_split)], collapse="_")
			base_threshold <- allele_threshold_table[asc_allele==base_allele,]
			if(nrow(base_threshold)!=0){
				iuis_allele <- paste0(base_threshold[["allele"]],"_",snps)
				base_threshold[["asc_allele"]]=a
				base_threshold[["allele"]]=iuis_allele
				allele_threshold_table <- rbind(
					allele_threshold_table,
					base_threshold
				)
			}
		}
		
	}
	
}



# infer the genotype
geno <- piglet::inferGenotypeAllele(data, 
									allele_threshold_table = allele_threshold_table, 
									germline_db = germline_db, 
									find_unmutated = find_unmutated,
									call = "${call}",
        							seq = "${seq}",
        							single_assignment = single_assignment,
									)

write.table(geno, file = paste0("${call}","_genotype_report.tsv"), row.names = F, sep = "\t")

geno <- geno[geno[["z_score"]]>=${z_threshold}]

# create the personal reference set
NOTGENO.IND <- !(sapply(strsplit(names(germline_db), '*', fixed = T), '[', 1) %in%  geno[["gene"]])
germline_db_new <- germline_db[NOTGENO.IND]

for (i in 1:nrow(geno)) {
  allele <- geno[["allele"]][i]
  IND <- names(germline_db) %in%  allele
  germline_db_new <- c(germline_db_new, germline_db[IND])
}

# writing imgt gapped fasta reference
writeFasta(germline_db_new, file = paste0("${call}","_personal_reference.fasta"))

"""

}

g_98_germlineFastaFile1_g_95= g_98_germlineFastaFile1_g_95.ifEmpty([""]) 


process sec_change_names_fasta {

input:
 set val(name), file(v_ref) from g_98_germlineFastaFile1_g_95

output:
 set val(name), file("new_V_novel_germline*")  into g_95_germlineFastaFile0_g21_22, g_95_germlineFastaFile0_g21_12
 file "changes.csv" optional true  into g_95_outputFileCSV1_g_89


script:

readArray_v_ref = v_ref.toString().split(' ')[0]

if(readArray_v_ref.endsWith("fasta")){

"""
#!/usr/bin/env python3 

import pandas as pd
from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
from Bio import SeqIO
from hashlib import sha256 


def fasta_to_dataframe(file_path):
    data = {'ID': [], 'Sequence': []}
    with open(file_path, 'r') as file:
        for record in SeqIO.parse(file, 'fasta'):
            data['ID'].append(record.id)
            data['Sequence'].append(str(record.seq))

        df = pd.DataFrame(data)
        return df


file_path = '${readArray_v_ref}'  # Replace with the actual path
df = fasta_to_dataframe(file_path)


for index, row in df.iterrows():   
  if len(row['ID']) > 50:
    print("hoo")
    print(row['ID'])
    row['ID'] = row['ID'].split('*')[0] + '*' + row['ID'].split('*')[1].split('_')[0] + '_' + sha256(row['Sequence'].encode('utf-8')).hexdigest()[-4:]


def dataframe_to_fasta(df, output_file, description_column='Description', default_description=''):
    records = []

    for index, row in df.iterrows():
        sequence_record = SeqRecord(Seq(row['Sequence']), id=row['ID'])

        # Use the description from the DataFrame if available, otherwise use the default
        description = row.get(description_column, default_description)
        sequence_record.description = description

        records.append(sequence_record)

    with open(output_file, 'w') as output_handle:
        SeqIO.write(records, output_handle, 'fasta')

def save_changes_to_csv(old_df, new_df, output_file):
    changes = []
    for index, (old_row, new_row) in enumerate(zip(old_df.itertuples(), new_df.itertuples()), 1):
        if old_row.ID != new_row.ID:
            changes.append({'Row': index, 'Old_ID': old_row.ID, 'New_ID': new_row.ID})
    
    changes_df = pd.DataFrame(changes)
    if not changes_df.empty:
        changes_df.to_csv(output_file, index=False)
        
output_file_path = 'new_V_novel_germline.fasta'

dataframe_to_fasta(df, output_file_path)


file_path = '${readArray_v_ref}'  # Replace with the actual path
old_df = fasta_to_dataframe(file_path)

output_csv_file = "changes.csv"
save_changes_to_csv(old_df, df, output_csv_file)

"""
} else{
	
"""
#!/usr/bin/env python3 
	

file_path = 'new_V_novel_germline.txt'

with open(file_path, 'w'):
    pass
    
"""    
}    
}


process Third_Alignment_V_MakeBlastDb {

input:
 set val(db_name), file(germlineFile) from g_95_germlineFastaFile0_g21_22

output:
 file "${db_name}"  into g21_22_germlineDb0_g21_9

script:

if(germlineFile.getName().endsWith("fasta")){
	"""
	sed -e '/^>/! s/[.]//g' ${germlineFile} > tmp_germline.fasta
	mkdir -m777 ${db_name}
	makeblastdb -parse_seqids -dbtype nucl -in tmp_germline.fasta -out ${db_name}/${db_name}
	"""
}else{
	"""
	echo something if off
	"""
}

}


process Third_Alignment_IgBlastn {

input:
 set val(name),file(fastaFile) from g_80_germlineFastaFile0_g21_9
 file db_v from g21_22_germlineDb0_g21_9
 file db_d from g21_16_germlineDb0_g21_9
 file db_j from g21_17_germlineDb0_g21_9

output:
 set val(name), file("${outfile}") optional true  into g21_9_igblastOut0_g21_12

script:
num_threads = params.Third_Alignment_IgBlastn.num_threads
ig_seqtype = params.Third_Alignment_IgBlastn.ig_seqtype
outfmt = params.Third_Alignment_IgBlastn.outfmt
num_alignments_V = params.Third_Alignment_IgBlastn.num_alignments_V
domain_system = params.Third_Alignment_IgBlastn.domain_system
auxiliary_data = params.Third_Alignment_IgBlastn.auxiliary_data

randomString = org.apache.commons.lang.RandomStringUtils.random(9, true, true)
outname = name + "_" + randomString
outfile = (outfmt=="MakeDb") ? name+"_"+randomString+".out" : name+"_"+randomString+".tsv"
outfmt = (outfmt=="MakeDb") ? "'7 std qseq sseq btop'" : "19"

if(db_v.toString()!="" && db_d.toString()!="" && db_j.toString()!=""){
	"""
	igblastn -query ${fastaFile} \
		-germline_db_V ${db_v}/${db_v} \
		-germline_db_D ${db_d}/${db_d} \
		-germline_db_J ${db_j}/${db_j} \
		-num_alignments_V ${num_alignments_V} \
		-domain_system imgt \
		-auxiliary_data ${auxiliary_data} \
		-outfmt ${outfmt} \
		-num_threads ${num_threads} \
		-out ${outfile}
	"""
}else{
	"""
	"""
}

}


process Third_Alignment_MakeDb {

input:
 set val(name),file(fastaFile) from g_80_germlineFastaFile0_g21_12
 set val(name_igblast),file(igblastOut) from g21_9_igblastOut0_g21_12
 set val(name1), file(v_germline_file) from g_95_germlineFastaFile0_g21_12
 set val(name2), file(d_germline_file) from g_99_germlineFastaFile1_g21_12
 set val(name3), file(j_germline_file) from g_100_germlineFastaFile1_g21_12

output:
 set val(name_igblast),file("*_db-pass.tsv") optional true  into g21_12_outputFileTSV0_g_89
 set val("reference_set"), file("${reference_set}") optional true  into g21_12_germlineFastaFile1_g_89
 set val(name_igblast),file("*_db-fail.tsv") optional true  into g21_12_outputFileTSV22

script:

failed = params.Third_Alignment_MakeDb.failed
format = params.Third_Alignment_MakeDb.format
regions = params.Third_Alignment_MakeDb.regions
extended = params.Third_Alignment_MakeDb.extended
asisid = params.Third_Alignment_MakeDb.asisid
asiscalls = params.Third_Alignment_MakeDb.asiscalls
inferjunction = params.Third_Alignment_MakeDb.inferjunction
partial = params.Third_Alignment_MakeDb.partial
name_alignment = params.Third_Alignment_MakeDb.name_alignment

failed = (failed=="true") ? "--failed" : ""
format = (format=="changeo") ? "--format changeo" : ""
extended = (extended=="true") ? "--extended" : ""
regions = (regions=="rhesus-igl") ? "--regions rhesus-igl" : ""
asisid = (asisid=="true") ? "--asis-id" : ""
asiscalls = (asiscalls=="true") ? "--asis-calls" : ""
inferjunction = (inferjunction=="true") ? "--infer-junction" : ""
partial = (partial=="true") ? "--partial" : ""

reference_set = "reference_set_makedb_"+name_alignment+".fasta"

outname = name_igblast+'_'+name_alignment

if(igblastOut.getName().endsWith(".out")){
	"""
	
	cat ${v_germline_file} ${d_germline_file} ${j_germline_file} > ${reference_set}
	
	MakeDb.py igblast \
		-s ${fastaFile} \
		-i ${igblastOut} \
		-r ${v_germline_file} ${d_germline_file} ${j_germline_file} \
		--log MD_${name}.log \
		--outname ${outname}\
		${extended} \
		${failed} \
		${format} \
		${regions} \
		${asisid} \
		${asiscalls} \
		${inferjunction} \
		${partial}
	"""
}else{
	"""
	
	"""
}

}

g_95_outputFileCSV1_g_89= g_95_outputFileCSV1_g_89.ifEmpty([""]) 


process change_names_back {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /${rep}$/) "final_annotation/$filename"}
input:
 file csv from g_95_outputFileCSV1_g_89
 set val(name_igblast),file(rep_file) from g21_12_outputFileTSV0_g_89
 set val(name2), file(rep_germline_file) from g21_12_germlineFastaFile1_g_89

output:
 set val("${rep}"), file("${rep}")  into g_89_outputFileTSV0_g_37, g_89_outputFileTSV0_g_105
 set val("${rep_germline}"),file("${rep_germline}")  into g_89_germlineFastaFile1_g_37, g_89_germlineFastaFile1_g_105


script:


rep = rep_file.toString().split(' ')[0]
changes_csv = csv.toString().split(' ')[0]
rep_germline = rep_germline_file.toString().split(' ')[0]

"""

#!/usr/bin/env Rscript


# Check if changes.csv file exists
if (file.exists("changes.csv")) {

  # Read changes from CSV
  changes <- read.csv("changes.csv", header = FALSE, col.names = c("row", "old_id", "new_id"))

  # Process changes and modify TSV files
  for (change in 1:nrow(changes)) {
  
  
    old_id <- changes[change,"old_id"]
    new_id <- changes[change,"new_id"]
    
    asterisk_pos <- gregexpr("*", old_id, fixed = TRUE)[[1]]
    old_id <- substring(old_id, asterisk_pos[1] + 1)
    
    asterisk_pos <- gregexpr("*", new_id, fixed = TRUE)[[1]]
    new_id <- substring(new_id, asterisk_pos[1] + 1)

    
    # Modify genotype file
    
    system(paste("sed -i 's/", new_id, "/", old_id, "/g' ${rep}", sep = ""))
    
    system(paste("sed -i 's/", new_id, "/", old_id, "/g' ${rep_germline}", sep = ""))
    
    
  }


} else {
  cat("No changes.csv file found.")
}

"""

}

g_89_germlineFastaFile1_g_105= g_89_germlineFastaFile1_g_105.ifEmpty([""]) 


process Haplotype_inference {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_haplotype.tsv$/) "haplotype_report/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_binomDel.tsv$/) "deletion_report/$filename"}
input:
 set val(name), file(airrFile) from g_89_outputFileTSV0_g_105
 set val(name1),file(germline) from g_89_germlineFastaFile1_g_105

output:
 set val(outname), file("*_haplotype.tsv") optional true  into g_105_outputFileTSV00
 set val(outname), file("*_binomDel.tsv") optional true  into g_105_outputFileTSV11

script:

germline = germline.name.startsWith('NO_FILE') ? "" : "${germline}"

outname = airrFile.name.toString().substring(0, airrFile.name.toString().indexOf("_db-pass"))
	
	
"""
#!/usr/bin/env Rscript

library(tigger)
library(data.table)
library(rabhit)
library(alakazam)

# read the data

data <- fread("${airrFile}", data.table=FALSE)

# read the germline
germline_db <- if("${germline}"!="") readIgFasta("${germline}") else NA

binom_del <-
       rabhit::deletionsByBinom(data, chain = "IGH")
       
# write deletion report

outfile_del = "${outname}_binomDel.tsv"

write.table(binom_del, file = outfile_del, sep = '\t', row.names = F, quote = T)

# haplotype inference

outfile_haplotype = "${outname}_gene-"

genes_haplotype <- c('IGHJ6', 'IGHD2-21', 'IGHD2-8')

for (gene in genes_haplotype) {
    CALL = paste0(tolower(substr(gene, 4, 4)), "_call")

    
    
    if (gene == 'IGHJ6') {
      CALL = 'j_call'
      toHap_GERM = germline_db[grepl("IGH[VD]", names(germline_db))]
      toHap_col = c('v_call', 'd_call')
    }else{
    	toHap_GERM = germline_db[grepl("IGHV", names(germline_db))]
    	toHap_col = c('v_call')
    }

    allele_fractions <-
      grep(gene, grep(',', data[[CALL]], invert = T, value = T), value = T)

	bool <- sum(table(allele_fractions) / length(allele_fractions) >= 0.3) == 2 && length(names(table(allele_fractions))) >= 2

    if (bool) {
      names_ <- names(table(allele_fractions)[table(allele_fractions) / length(allele_fractions) >= 0.3])
      
      alleles <- paste0(sapply(names_, function(x) strsplit(x, '[*]')[[1]][2]), collapse = '_')
      
      haplo <- rabhit::createFullHaplotype(
        data,
        toHap_col = toHap_col,
        hapBy_col = CALL,
        hapBy = gene,
        toHap_GERM = toHap_GERM,
        deleted_genes = binom_del,
        chain = "IGH"
      )
      
      # paste0(gene, '-', alleles)
      
      write.table(
        haplo,
        file = paste0(outfile_haplotype, gene, '-', alleles, "_haplotype.tsv"),
        sep = '\t',
        row.names = F,
        quote = T
      )

    }
}



"""
}


process ogrdbstats_report {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*pdf$/) "ogrdbstats/$filename"}
publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*csv$/) "ogrdbstats/$filename"}
input:
 set val(name),file(airrFile) from g_89_outputFileTSV0_g_37
 set val(name1), file(germline_file) from g_89_germlineFastaFile1_g_37

output:
 file "*pdf"  into g_37_outputFilePdf00
 file "*csv"  into g_37_outputFileCSV11

script:

// general params
chain = params.ogrdbstats_report.chain
outname = airrFile.name.toString().substring(0, airrFile.name.toString().indexOf("_db-pass"))

"""

germline_file_path=\$(realpath ${germline_file})

novel=""

if grep -q "_[A-Z][0-9]" ${germline_file}; then
	awk '/^>/{f=0} \$0 ~ /_[A-Z][0-9]/ {f=1} f' ${germline_file} > novel_sequences.fasta
	novel=\$(realpath novel_sequences.fasta)
	diff \$germline_file_path \$novel | grep '^<' | sed 's/^< //' > personal_germline.fasta
	germline_file_path=\$(realpath personal_germline.fasta)
	novel="--inf_file \$novel"
fi

IFS='\t' read -a var < ${airrFile}

airrfile=${airrFile}

if [[ ! "\${var[*]}" =~ "v_call_genotyped" ]]; then
    awk -F'\t' '{col=\$5;gsub("call", "call_genotyped", col); print \$0 "\t" col}' ${airrFile} > ${outname}_genotyped.tsv
    airrfile=${outname}_genotyped.tsv
fi

airrFile_path=\$(realpath \$airrfile)


run_ogrdbstats \
	\$germline_file_path \
	"Homosapiens" \
	\$airrFile_path \
	${chain} \
	\$novel 

"""

}


process filter_dupcount {

publishDir params.outdir, mode: 'copy', saveAs: {filename -> if (filename =~ /.*_duplicate-pass.tsv$/) "initial_alignment/$filename"}
input:
 set val(name),file(airrSeq) from g111_52_outputFileTSV2_g_112

output:
 set val(name),file("*_duplicate-pass.tsv")  into g_112_outputFileTSV00

script:
name_alignment = params.filter_dupcount.name_alignment

outfile = airrSeq.toString() - '.tsv' + name_alignment + "_collapsed-"

"""
#!/usr/bin/env Rscript

library(data.table)

data_sample <- fread("${airrSeq}")

data_sample <- data_sample[as.numeric(DUPCOUNT)>1,]

fwrite(data_sample, file = paste0("${outfile}","_duplicate-pass.tsv"), sep = "\t", quote = F, row.names = F)
"""

}


workflow.onComplete {
println "##Pipeline execution summary##"
println "---------------------------"
println "##Completed at: $workflow.complete"
println "##Duration: ${workflow.duration}"
println "##Success: ${workflow.success ? 'OK' : 'failed' }"
println "##Exit status: ${workflow.exitStatus}"
}
