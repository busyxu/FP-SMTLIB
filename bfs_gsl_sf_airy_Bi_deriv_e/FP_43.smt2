(declare-fun a_ack!726 () (_ BitVec 64))
(declare-fun b_ack!725 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #xc010000000000000)))
(assert (= #x00000000 (bvand b_ack!725 #x00000007)))

(check-sat)
(exit)
