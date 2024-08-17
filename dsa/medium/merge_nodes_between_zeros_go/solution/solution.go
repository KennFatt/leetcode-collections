package solution

import "fmt"

type ListNode struct {
	Val  int
	Next *ListNode
}

func MergeNodes(head *ListNode) *ListNode {
	var (
		counter = 0

		currNode = head

		result    *ListNode = nil
		ptrToFill *ListNode = nil
	)

	for {
		if currNode == nil {
			break
		}

		currNodeVal := currNode.Val
		counter += currNodeVal
		if currNodeVal == 0 && counter > 0 {
			fmt.Println("node hit:", counter)
			hasNextNode := currNode.Next != nil

			if result == nil {
				result = &ListNode{
					Val: counter,
				}
				if hasNextNode {
					result.Next = &ListNode{
						Val: -1,
					}
				}

				ptrToFill = result.Next
			} else {
				ptrToFill.Val = counter

				if hasNextNode {
					ptrToFill.Next = &ListNode{
						Val: -1,
					}

					ptrToFill = ptrToFill.Next
				}
			}

			counter = 0
		}

		currNode = currNode.Next
	}

	return result
}
