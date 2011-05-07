import sys, pygame, random                                   # Importa os modulos do pygame
pygame.init()                                                # Inicializa esses modulos

size = width, height = 640, 480                              # Define o tamanho da tela
color = 255, 255, 255                                        # Define a cor de fundo da tela
screen = pygame.display.set_mode(size)                       # Inicializa a janela onde rola o game 



class Bola(pygame.sprite.Sprite):

	def __init__(self,vx,vy):
		pygame.sprite.Sprite.__init__(self)

		self.image = pygame.image.load("bola.png")   # Carrega a bola na memoria
		self.rect  = pygame.image.load("bola.png").get_rect()   # Define um retangulo em volta da imagem 
		self.rect.centerx = int(random.random()*640)
		self.rect.centery = int(random.random()*80)
		self.speedx = int(random.random()*40) - 20
		self.speedy = int(random.random()*40) - 20
		self.vx =  int(random.random()*10)
		self.vy =  int(random.random()*10)





clock = pygame.time.Clock()
f=1
lista = [] 
lista.append(Bola(50,50 ))
lista.append(Bola(50,50 ))
while 1:                   
	clock.tick(120)					     # Loop principal do game 

#	print "x= "+str(ball.rect.left)+" y ="+str(ball.rect.top)+"speed = "+str(speed[1])+" f ="+str(speed[0])


	for event in pygame.event.get():                     # Verifica eventos do teclado, mouse etc 
		if event.type == pygame.QUIT: sys.exit()     # Se o evento for do tipo QUIT encerra
		if event.type == pygame.KEYDOWN:
			if event.key == pygame.K_LEFT:
				lista.append(Bola(50,50))
			if event.key == pygame.K_RIGHT:
				f = f * (-1)
	screen.fill(color)                                   # Preenche a tela com cor de fundo 
	
	for i in lista:
		i.speedy = i.speedy + f
	
		i.rect = i.rect.move(i.speedx,i.speedy)                    # Responsavel pelo movimento da bola
	
		if i.rect.left < 0 or i.rect.right > width:    # Rebate a bola no caso de colisao com a tela
	            i.speedx = -i.speedx
	        if i.rect.top < 0 or i.rect.bottom > height:
	            i.speedy = -i.speedy
		    if  i.rect.bottom > height:                   # Desloca a bola um pouco para cima
			 i.rect.bottom=height
			 i.speedy=i.speedy/2
			 i.speedx=i.speedx/1.01
		screen.blit(i.image, i.rect)                          # Desenha a bola na tela

	pygame.display.flip()                                # Envia o que foi desenhado para o monitor 

