CFLAGS = -std=c++17
LDFLAGS = `pkg-config --static --libs glfw3` -lvulkan

VulkanWindow: main.cpp
	g++ $(CFLAGS) -o VulkanWindow main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanWindow
		./VulkanWindow

clean:
	rm -f VulkanWindow
