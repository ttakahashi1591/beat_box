# beat_box 

# Iteration 1

###Node Class
- Created to store Node and hold its attributes for when it is called for.
- Store both data (sound) and next_node which is nil (nothing)
- Added both attr_reader and att_accessor in order to ensure that all Read and Write methods were accessible in my other files. 

### initialize method
- The initialize method will assign data and next_node to a new object of Node when it is called for.

### Spec Test
- Utilized describe block’s to separate each of my methods  to organize my RSpec test.
- Using the expect method, I Tested to ensure that a new Node could be created as an instance inside the it block. 
- I did the same for both the data and next_node attributes to ensure that the code in my lib file was providing the correct output. 

### Linked List Class
- Created to store a LinkedList which stores the head and next_node. 
- Added both attr_reader and att_accessor in order to ensure that all Read and Write methods were accessible in my other files. 

### initialize method
The initialize method will assign head and next_node to a new object of LinkedList when it is called for.

### append method
- The append method creates a new node which provides it’s argument of data.
- If the head is empty, then the head becomes the new node.
- Or else will loop to move through existing nodes, starting from end.
- Once the last node is found, the next node is the new node.

### count method
- The count method will determine how many nodes are included in the list. 
- We start the count at 0 and define the cuurent_node as the head. 
- While the current node is not nil, then we start the while loop.
- We utilize the while loop to iterate through the list and count 1 for each node in the list until it reaches the tail.  
- Once at the tail we ask Ruby to output the count it received from the loop. 

### to_string method
- The to_string method will generate a string with all data in the list, separated by spaces. 
- We first define the current-node as the head to help us start traversing through the list. 
- We also define an empty accumulator as a string to store the data we will get from the output. 
- While the current node is not nil, then we start the while loop.
- We utilize the while loop to iterate through the list and shovel any data into the empty string we created. 
- Once we reach the tail and all data has been shoveled in the string, we call for the string using the chop method to remove the empty space at the end of the string. 

# Iteration 2

### prepend method
- We create a new instance of Node.
- Then we use the if/else block to determine if head is nil and if the list is empty, then we want to fill the new node as the head.
- Or else we want to set the next_node value before we set the next node as the head.
- Lastly, we set the new_node as the head. 

### insert method
- Our insert method requires two arguments, the index location and data.
- We create a new instance of Node and define the cuurent_node as the head of the list. 
- In our if/else block we start by determining if the index is set at 0 or if the head is set to nil.
- If either is true, then we know that the node should be placed at the start of the list and we prepend that data there.
- Or else we start a times loop that subtracts the index minus 1 until we call it to break once the next node is equal to nil.
- current_node = current_node.next_node updates the current node as the next node and inserts the next into the list.
- new_node.next_node = current_node.next_node establishes a link between the new node and the node behind it in the list.
- Lately, current_node.next_node = new_node assigns the next_node the current node as the new node and inserts the new node into the linked list at the provided position.

### find method
- Our find method requires two arguments, the start location and 
- We define the current node as the head, create an empty accumulator as a string to store our data, and we set the index to 0. 
- In our while block, we iterate through the list until we reach the end or we have reached the desired node. 
- We then want to shovel any data into the empty string if the index is greater than or equal to our start position. 
- Then we update our current_node as the next_node in the list. 
- We use a counter on the index to determine the position for the next iteration.
- Once the loop finishes, we want the output to be the string (I don’t think we actually need the join method attached. 

