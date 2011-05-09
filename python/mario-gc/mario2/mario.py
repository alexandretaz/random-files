import sys, pygame, random                                   # Importa os modulos do pygame
pygame.init()                                                # Inicializa esses modulos

size = width, height = 640, 480                              # Define o tamanho da tela
color = 255, 255, 255                                        # Define a cor de fundo da tela
screen = pygame.display.set_mode(size)                       # Inicializa a janela onde rola o game 

l = 16 
h = 30

class Goomba(pygame.sprite.Sprite):

	def __init__(self):
		pygame.sprite.Sprite.__init__(self)

		self.image = pygame.image.load("goomba1.png")   # Carrega a bola na memoria
		self.rect  = pygame.image.load("goomba1.png").get_rect()   # Define um retangulo em volta da imagem 
		self.rect.centerx = int(random.random()*640)
		self.rect.centery = int(random.random()*80)
		self.speedx = int(random.random()*40) - 20
		self.speedy = int(random.random()*40) - 20
		self.mario = 0
		self.isalive = 1
		


class Mario(pygame.sprite.Sprite):
	
	def __init__(self,x,y):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.image.load("mario1.png")
#		self.image = pygame.transform.scale2x(self.image)
		self.rect  = self.image.get_rect()
		self.rect.centerx = x
		self.rect.centery = y
		self.speedx = 0
		self.speedy = 0
		self.mario = 1
		self.isalive = 1

	def jump(self):
		jump.play()			
		self.speedy=-25

	def die(self):
  		self.rect.centerx = x
		self.speedy=-20
		bgm.stop()
		dead.play()

	def respawn(self):
		self.rect.centerx = 50
		self.rect.centery = 400
		self.speedx = 10
		self.isalive = 1


		



clock = pygame.time.Clock()
f=1
lista = [] 
mario = Mario(150, 150)
#lista.append(Goomba())
lista.append(mario)

pressed_keys = pygame.key.get_pressed()
pygame.mixer.init()
bgm = pygame.mixer.Sound("bgm.ogg")
jump = pygame.mixer.Sound("jump.wav")
dead = pygame.mixer.Sound("dead.ogg")
bgm.play(-1)

while 1:                   
	clock.tick(60)					     # Loop principal do game 

	
#	if not mario.isalive and count < 120:
#		count = count + 1
#		print count
#	if count == 120:



	for event in pygame.event.get():                     # Verifica eventos do teclado, mouse etc 
		if event.type == pygame.QUIT: sys.exit()     # Se o evento for do tipo QUIT encerra
		if event.type == pygame.KEYDOWN:
		
			if event.key == pygame.K_SPACE:
				lista.append(Goomba())

	pressed_keys = pygame.key.get_pressed()

	if pressed_keys[pygame.K_LEFT]:
		if mario.speedx > -10 and mario.isalive:
			mario.speedx=mario.speedx-3
	if pressed_keys[pygame.K_RIGHT]:
		if mario.speedx < 10 and mario.isalive :
			mario.speedx=mario.speedx+3
        if pressed_keys[pygame.K_UP]:
		if mario.rect.bottom >= height:
			mario.jump() 

	
	screen.fill(color)                                   # Preenche a tela com cor de fundo 
	
	for i in lista:
		i.speedy = i.speedy + f
	
		i.rect = i.rect.move(i.speedx,i.speedy)                    # Responsavel pelo movimento da bola

		print lista
		print i.rect.bottom
		if mario.rect.colliderect(i.rect) and not i.mario:
			if (mario.rect.bottom != height) and mario.isalive:
			    mario.speedy=-10
			    i.isalive=0
#			    if (i.rect.bottom > height + 100) and  i.mario:
#				    lista.remove(i)
			else:
				mario.isalive=0
				count = 0


		if i.rect.left < 0:
		    i.speedx = -i.speedx
		    i.rect.left=0

		if i.rect.right > width:    # Rebate a bola no caso de colisao com a tela
	            i.speedx = -i.speedx
		    i.rect.right=width
		    
		if i.rect.top < 0 or i.rect.bottom > height:
		    if i.isalive != 0:
	            	i.speedy = -i.speedy
			if  i.rect.bottom > height:                   # Desloca a bola um pouco para cima
				i.rect.bottom=height
				i.speedy=i.speedy/2
				i.speedx=i.speedx/2
				if abs(i.speedx) <= 1:           # nao faca isso !!!
					i.speedx = 0
		    else:
			    if (i.rect.bottom > 800) and not i.mario:
                                    lista.remove(i)

			    if mario.rect.bottom > 1000:
				    mario.respawn()
			 
		screen.blit(i.image,i.rect)

	pygame.display.flip()                                # Envia o que foi desenhado para o monitor 

