# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 13:47:49 by alamorth          #+#    #+#              #
#    Updated: 2019/12/28 05:14:59 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.intel_syntax noprefix
.globl _ft_strcpy
_ft_strcpy:
	mov	rcx, rdi #sauvegarde du premiere argument
	mov	rdi, rsi #on met rsi dans rdi
	call	_ft_strlen #on appel strlen avec rdi donc rsi 2eme argument du strcpy
	mov	rdi, rcx #rdi reprend sa valeur
	mov	rdx, rax #on met la len dans rdx
boucle:
	test	rdx, rdx #si rdx vaut 0 avec la ligne d apres on jump a end
	jz	end
	dec	rdx #decremente rdx donc la len src
	mov	cl, BYTE ptr[rsi + rdx] #on met dans cl le dernier - compteur de src
	mov	BYTE ptr[rdi + rdx], cl #on met dans le dernier - compteur de dest le cl
	jmp	boucle #on boucle
end:
	mov	BYTE ptr[rdi + rax], 0 #'\0' a la fin
	mov	rax, rdi
	ret
