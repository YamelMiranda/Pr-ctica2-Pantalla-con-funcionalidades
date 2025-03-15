from abc import ABC, abstractmethod

# 1. Definimos la interfaz Vehiculo
class Vehiculo(ABC):
    @abstractmethod
    def acelerar(self):
        pass

    @abstractmethod
    def frenar(self):
        pass

# 2. Clases que implementan la interfaz
class Coche(Vehiculo):
    def acelerar(self):
        return "El coche acelera a 100 km/h 🚗"

    def frenar(self):
        return "El coche frena suavemente 🏁"

class Bicicleta(Vehiculo):
    def acelerar(self):
        return "La bicicleta pedalea más rápido 🚴"

    def frenar(self):
        return "La bicicleta usa los frenos de mano 🛑"

class Avion(Vehiculo):
    def acelerar(self):
        return "El avión aumenta la velocidad en la pista ✈️"

    def frenar(self):
        return "El avión despliega los frenos aerodinámicos 🛬"

# 3. Uso del patrón interfaz
vehiculos = [Coche(), Bicicleta(), Avion()]

for vehiculo in vehiculos:
    print(vehiculo.acelerar())
    print(vehiculo.frenar())
    print("---")
