# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 13:00:33 by alamorth          #+#    #+#              #
#    Updated: 2019/12/05 13:47:36 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.intel_syntax noprefix
.globl _ft_strdup
_ft_strdup:
	call	_ft_strlen
	inc	rax
	mov	r15, rax #stok la len dans r15
	push	rdi #sauvegarde de rdi
	mov	rdi, rax #rdi = rax
	call	_malloc	#avec rdi qui est egal a rax la len
	pop	rdi #on recupere le vrai rdi donc la chaine
	mov	rsi, rdi #on copy rdi dans rsi
	mov	rdi, rax #met rdi sur rax donc la memoire alloue par le malloc
	mov	rdx, r15 #on met la len dns rdx en gros on prepare l appel de memcpy
	call	_ft_memcpy #on appel memcpy avec les bon arguments et on return le rax de memcpy donc la chaine fraiche
	ret
