# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 10:51:44 by alamorth          #+#    #+#              #
#    Updated: 2019/12/05 11:29:42 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.intel_syntax noprefix
.globl _ft_strlen
_ft_strlen:
	xor	rax, rax     #reviens a faire mov rax, 0 ->initialisation de rax a 0
boucle:
	mov	cl, BYTE ptr[rdi + rax] #rdi pointe sur le premier argument, on met le byte pointe par rdi + rax le compteur dans cl
	inc	rax #incremente rax
	test	cl, cl #test si cl vaut 0, si cl = 0 alors le flag zero = 1
	jnz	boucle #jump si le flag zero = 0 en gros si cl ne vaut pas 0 
	dec	rax #decremente rax
end:
	ret
