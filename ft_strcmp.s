# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamorth <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 11:37:34 by alamorth          #+#    #+#              #
#    Updated: 2019/12/05 12:51:51 by alamorth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.intel_syntax noprefix
.globl _ft_strcmp
_ft_strcmp:
	xor	al, al
	xor	rcx, rcx
boucle:
	mov	bh, BYTE ptr[rdi + rcx] #met le premier element du premier argument + pointeur dans bh
	mov	cl, BYTE ptr[rsi + rcx] #met le premier element du second argument + pointeur dans cl
	mov	al, bh #met bh dans al
	sub	al, cl #al -cl
	test	bh, bh #si bh = 0 alors zeroflag = 1
	jz	end #si bh = 0 end (si ya rien dans le premier argument)
	inc	rcx #incremente rcx le compteur
	test	al, al #test si al = 0 alors zeroflag = 1
	jz	boucle #si zeroflag = 1 alors bh et cl sont identiques du coup on boucle
end:
	movsx	rax, al #met al dans rax
	ret
