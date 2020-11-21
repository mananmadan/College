open_system('sltank')
sim('sltank' , 100)
open_system('sltank/Comparission')

figure
plotmf(tank, 'input', 1)

figure
plotmf(tank, 'inpuut', 2)

figure
plotmf(tank, 'output', 1)