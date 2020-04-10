# ---------------------------------------------------------------------------
# MAIN SEGMENT
#
# Text segment (main code) for the program.
# ---------------------------------------------------------------------------

	.text

test:

	# fonction test pour tester les differentes fonctions construites

	jal init_plateau	# test init_plateau

	li $a0, 3			# test print_game
	li $a1, 1
	li $a2, 6
	li $a3, 4
	jal print_game

	li $a0, 1			# test ask_player_cell
	jal ask_player_cell_move
	ori $a0, $v0, 0
	li $v0, 1
	syscall
	ori $a0, $v1, 0
	syscall

	li $a0, 3			# test ask_player_nb_pieces_move
	li $a1, 1
	jal ask_player_nb_pieces_move
	ori $a0, $v0, 0
	li $v0, 1
	syscall

	li $a0, 1			# test ask_player_action
	jal ask_player_action
	ori $a0, $v0, 0
	li $v0, 1
	syscall





	j main


#--------------------#

	# TODO
	.globl main
main:

	# fonction main qui sera appelé au lancement du programme pour executer le jeu
	
	li $v0, 10
	syscall		# Instruction de fin de programme
