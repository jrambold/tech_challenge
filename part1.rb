# Given a linked list, remove the n-th node from the end of list and return its head.
# Example:
# Given linked list: 1->2->3->4->5, and n = 2.
# After removing the second node from the end, the linked list becomes 1->2->3->5.
# Note:
# Given n will always be valid.
# Follow up:
# Could you do this in one pass?
# Use the following Ruby code to get started


# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end


def remove_nth_from_end(head, n)
  backtrack(head, n)
  head
end

def backtrack(node, index)
  count = 0
  if node.next
    count = backtrack(node.next, index) + 1
  else
    return 0
  end
  if count == index
    node.next = node.next.next
  end
  count
end

start = ListNode.new(1)
node = start
for i in 2..5
  node.next = ListNode.new(i)
  node = node.next
end

node = start
for i in 0..4
  puts node.val
  node = node.next
end

remove_nth_from_end(start, 2)

node = start
for i in 0..3
  puts node.val
  node = node.next
end
