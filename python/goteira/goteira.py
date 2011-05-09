#!/usr/bin/python

import sys, pygame, os
pygame.init()

size = width, height = 600, 400
screen = pygame.display.set_mode(size)
black = 0, 0, 0


class Bacia(pygame.sprite.Sprite):       		        # Cria a classe que controla a Bacia

	def __init__(self,startpos):	 		        # Funcao principal da Bacia	
		pygame.sprite.Sprite.__init__(self)             # Chama inicializador de Sprites
						
		self.direction = 1                              # Direcao da bacia
		self.image, self.rect = load_image('bacia.png') # Carrega a imagem na tela	
		self.rect.centerx = startpos[0]                 # Alinha retangulo virtual com a imagem
		self.rect.centery = startpos[1]
	
	def update(self):                                       # Funcao que atualiza a bacia na sala
        	
		self.rect.move_ip((self.direction*3,0))         # Move o retangulo virtual
	        
		
		if self.rect.left < 0:                          # Rotinas para checar se a bacia atingiu
	            self.direction = 1                          # as bordas da tela, se sim inverte a direcao
	        elif self.rect.right > width:
	            self.direction = -1



def load_image(name):                                           # Funcao que carrega as imagens para a memoria
    fullname = os.path.join('figuras', name)
    try:
        image = pygame.image.load(fullname)
    except pygame.error, message:
        print 'Erro ao carregar imagem:', fullname
        raise SystemExit, message
    return image, image.get_rect()



def main():						        # Funcao principal chamada quando se executa o script
								# Cria os objetos Bacia, gota etc...
    bacia = Bacia([20,330])
    pygame.display.set_caption('Bacia!')
    clock = pygame.time.Clock()
    
    while 1: 							# Loop do game, ele nunca vai sair ate receber um sinal
								# pygame.QUIT 
        clock.tick(120)                                         #garante que o programa nao vai rodar a mais que 120fps

        
        # Verifica eventos do teclado
        for event in pygame.event.get():
            if event.type == pygame.QUIT: 
               sys.exit()
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_LEFT:
                    bacia.direction = -1
                if event.key == pygame.K_RIGHT:
                    bacia.direction = 1
        
        #atualiza os objetos
        bacia.update()
    
        #redesenha a tela
        screen.fill(black)
        screen.blit(bacia.image, bacia.rect)
        pygame.display.flip()
    
if __name__ == "__main__":
    main()


