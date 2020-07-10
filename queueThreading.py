import threading
import queue
import time


def runtests(thread_name, test):
    """Running a Test"""
    print("Running Test %s on %s" % (test, thread_name))
    print("\n")
    time.sleep(5)


def getQueueData(thread_name, task_queue):
    """Gets the data from the queue and processes it."""
    while task_queue.qsize() != 0:
        test = task_queue.get()
        runtests(thread_name, test)


def main():
    tests = ['TC_01', 'TC_02', 'TC_03', 'TC_04', 'TC_05', 'TC_06']

    # Fill the queue
    q = queue.Queue()
    for item in tests:
        q.put(item)
    num_of_threads = 3
    jobs = []
    for i in range(num_of_threads):
        # Start the threads, that will consume data from the queue
        t1 = threading.Thread(target=getQueueData, args=("Thread %s" % i, q))
        jobs.append(t1)

    for j in jobs:
        j.start()

    for j in jobs:
        j.join()

    print("Main Completed")


if __name__ == '__main__':
    main()
