package solution_test

import (
	s "merge_nodes_between_zeros_go/solution"
	"testing"
)

func TestMergeNodes(t *testing.T) {
	// tc := &s.ListNode{
	// 	Val: 0,
	// 	Next: &s.ListNode{
	// 		Val: 333,
	// 		Next: &s.ListNode{
	// 			Val: 711,
	// 			Next: &s.ListNode{
	// 				Val: 0,
	// 				Next: &s.ListNode{
	// 					Val: 941,
	// 					Next: &s.ListNode{
	// 						Val: 0,
	// 						Next: &s.ListNode{
	// 							Val: 614,
	// 							Next: &s.ListNode{
	// 								Val: 0,
	// 								Next: &s.ListNode{
	// 									Val: 387,
	// 									Next: &s.ListNode{
	// 										Val:  0,
	// 										Next: nil,
	// 									},
	// 								},
	// 							},
	// 						},
	// 					},
	// 				},
	// 			},
	// 		},
	// 	},
	// }
	tc := &s.ListNode{
		Val: 0,
		Next: &s.ListNode{
			Val: 24,
			Next: &s.ListNode{
				Val: 14,
				Next: &s.ListNode{
					Val: 0,
				},
			},
		},
	}

	res := s.MergeNodes(tc)
	_ = res
}
