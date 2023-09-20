(declare-fun a_ack!451 () (_ BitVec 64))
(declare-fun b_ack!450 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!451) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!450)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!451) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!450)))

(check-sat)
(exit)
