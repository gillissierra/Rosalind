#!/bin/bash

# Given a DNA string, covert the protein sequence

string=$1

# Keep only the sequence after the first AUG
coding="AUG"${string#*AUG}

# Loop through the string to get each 3 bp codon
for codon in $(echo  $coding | fold -w3)
do
	case ${codon::2} in
		UU)
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="F"
			else
				PROT+="L"
			fi
			;;

		CU)
			PROT+="L"
			;;

		AU)
			if [ "${codon:(-1)}" == "G" ]
			then 
				PROT+="M"
			else
				PROT+="I"
			fi
			;;

		GU)
			PROT+="V"
			;;

		UC)
			PROT+="S"
			;;

		CC) 
			PROT+="P"
			;;

		AC)
			PROT+="T"
			;;

		GC)
			PROT+="A"
			;;

		UA)
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="Y"
			else
				break
			fi
			;;

		CA)
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="H"
			else
				PROT+="Q"
			fi
			;;

		AA) 
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="N"
			else
				PROT+="K"
			fi
			;;


		GA)
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="D"
			else
				PROT+="E"
			fi
			;;


		UG)
			if [ "${codon:(-1)}" == "A" ]
			then
				break
			elif [ "${codon:(-1)}" == "G" ]
			then
				PROT+="W"
			else
				PROT+="C"
			fi
			;;

		CG)
			PROT+="R"
			;;

		AG)
			if [[ "${codon:(-1)}" == "U" || "${codon:(-1)}" == "C" ]]
			then
				PROT+="S"
			else
				PROT+="R"
			fi
			;;

		GG)
			PROT+="G"
			;;

		*)
			PROT+="Other"
			;;
	esac
done

echo $PROT

