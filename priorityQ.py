from operator import itemgetter


# Priority Queue

class PriorityQueue(object):
    # initialize queue
    def __init__(self):
        self.queue = []

    def __str__(self):
        return ' '.join([str(i) for i in self.queue])

    # check if queue is empty
    def isEmpty(self):
        return len(self.queue) == 0

    # for inserting an element in the queue
    def insert(self, priority, data):
        self.queue.append((priority, data))

    # for popping an element based on Priority
    def pop(self):
        try:
            for i in range(len(self.queue)):
                res = max(self.queue, key=itemgetter(0))
            self.queue.remove(max(self.queue, key=itemgetter(0)))
            return res
        except IndexError:
            print()
            exit()


if __name__ == '__main__':
    myQueue = PriorityQueue()
    # insert(priority,data)
    myQueue.insert(3, "Stairway to Heaven")
    myQueue.insert(1, "Beat it")
    myQueue.insert(2, "Sweet Child of Mine")
    myQueue.insert(4, "Hotel California")
    print(myQueue)
    while not myQueue.isEmpty():
        print(myQueue.pop())
