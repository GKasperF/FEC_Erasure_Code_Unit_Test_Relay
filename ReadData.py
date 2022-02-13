import matplotlib.pyplot as plt
import numpy as np

with open('bin/3_node_trace/MWDF_RLC/T=6/N2_ID_Trace_MWDF_RLC.txt') as f: 
    ID_RLC_T6 = f.read().split() #Read the string. This will convert into a list of strings.
    ID_RLC_T6 = [int(x) for x in ID_RLC_T6] #Make the list of strings a list of integers instead...

with open('bin/3_node_trace/MWDF_RLC/T=6/N2_Trace_MWDF_RLC.txt', 'rb') as f:
    Trace_RLC_T6 = f.read().decode().split()
    Trace_RLC_T6 = [int(x) for x in Trace_RLC_T6]

last_ID = ID_RLC_T6[-1] #Get the last recorded ID as an estimate of the total number of transmitted packets

N_RLC_T6 = np.zeros(last_ID) #This will be the sequence indicating the N for every packet ID
Rate_RLC_T6 = np.zeros(last_ID) #This will be the sequence indicating the Coding Rate for every packet ID

i = 0

for ID in ID_RLC_T6: #The loops just converts the delta data (every change in N) to the complete data for every packet ID.
    N_RLC_T6[ID:] = Trace_RLC_T6[i] 
    Rate_RLC_T6[ID:] = (6 + 1 - Trace_RLC_T6[i])/(6 + 1) #Computes the rate, which is given by (T + 1 - N)/(T + 1). In this case, T = 6.
    i+= 1

print(np.mean(Rate_RLC_T6)) #This is the average coding rate, which should be equal to the one in the plot. If it isn't, then something is being calculated wrong in the C project.

with open('bin/P2P_trace/T=6/ID_Trace.txt') as f:
    ID_P2P_T6 = f.read().split()
    ID_P2P_T6 = [int(x) for x in ID_P2P_T6]    

with open('bin/P2P_trace/T=6/N_Trace.txt', 'rb') as f:
    Trace_P2P_T6 = f.read().decode().split()
    Trace_P2P_T6 = [int(x) for x in Trace_P2P_T6]

last_ID_P2P = ID_P2P_T6[-1] #Get the last recorded ID as an estimate of the total number of transmitted packets

N_P2P_T6 = np.zeros(last_ID_P2P) #This will be the sequence indicating the N for every packet ID
Rate_P2P_T6 = np.zeros(last_ID_P2P) #This will be the sequence indicating the Coding Rate for every packet ID

i = 0

for ID in ID_P2P_T6: #The loops just converts the delta data (every change in N) to the complete data for every packet ID.
    N_P2P_T6[ID:] = Trace_P2P_T6[i] 
    Rate_P2P_T6[ID:] = (6 + 1 - Trace_P2P_T6[i])/(6 + 1)
    i+= 1

print(np.mean(Rate_P2P_T6))

plt.plot(range(last_ID), N_RLC_T6, range(last_ID_P2P), N_P2P_T6)
plt.legend( ('RLC', 'P2P') )
plt.show()

plt.plot(range(last_ID), Rate_RLC_T6, range(last_ID_P2P), Rate_P2P_T6)
plt.show()

pass