# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 13:14:23 by alamorth          #+#    #+#              #
#    Updated: 2019/12/05 13:46:44 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.intel_syntax noprefix
.globl _ft_memcpy
_ft_memcpy:
	test	rdx, rdx #si le 3 eme argument == 0 flagzero = 1
	jz	end #si flagzero = 1 go to end
	dec	rdx #decremente rdx
	mov	cl, BYTE ptr[rsi + rdx] #one met le dernier octet + pointeur decrementer du deuxieme argument dans cl
	mov	BYTE ptr[rdi + rdx], cl # on met ce qu on a copie dans le premier argument qui est vide
	jmp	_ft_memcpy #on boucle
end:
	mov	rax, rdi #rax devient rdi
	ret
