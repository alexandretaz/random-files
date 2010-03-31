import sys, pygame                                           # Importa os modulos do pygame
pygame.init()                                                # Inicializa esses modulos

size = width, height = 640, 480                              # Define o tamanho da tela
speed = [2, 2]                                               # Define a velocidade do Objeto na tela 
color = 255, 255, 255                                        # Define a cor de fundo da tela
screen = pygame.display.set_mode(size)                       # Inicializa a janela onde rola o game 
ball = pygame.image.load("bola.png")                         # Carrega a bola na memoria
ballrect = ball.get_rect()                                   # Define um retangulo em volta da imagem 
clock = pygame.time.Clock()
f=1

while 1:                   
	clock.tick(120)					     # Loop principal do game 

	print "x= "+str(ballrect.left)+" y ="+str(ballrect.top)+"speed = "+str(speed[1])+" f ="+str(speed[0])

	speed[1] = speed[1] + f

	for event in pygame.event.get():                     # Verifica eventos do teclado, mouse etc 
		if event.type == pygame.QUIT: sys.exit()     # Se o evento for do tipo QUIT encerra
	
        ballrect = ballrect.move(speed)                      # Responsavel pelo movimento da bola

	if ballrect.left < 0 or ballrect.right > width:      # Rebate a bola no caso de colisao com a tela
            speed[0] = -speed[0]
        if ballrect.top < 0 or ballrect.bottom > height:
            speed[1] = -speed[1]
	    if  ballrect.bottom > height:                    # Desloca a bola um pouco para cima
		 ballrect.bottom=height
		 speed[1]=speed[1]/2
		 speed[0]=speed[0]/1.01

        screen.fill(color)                                   # Preenche a tela com cor de fundo 
        screen.blit(ball, ballrect)                          # Desenha a bola na tela
        pygame.display.flip()                                # Envia o que foi desenhado para o monitor 
