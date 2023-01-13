EXEC=libfts.a
ASM=nasm
ASFLAGS=-f elf64
SRC=	ft_isalpha.s \
		ft_isdigit.s
OBJ=$(SRC:.s=.o)

all: $(EXEC)

$(EXEC): $(OBJ)
	ar rcs $(EXEC) $(OBJ)

%.o: %.s
	$(ASM) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(EXEC)

re: fclean all
