(declare-fun a_ack!193 () (_ BitVec 32))
(declare-fun b_ack!192 () (_ BitVec 64))
(assert (not (bvslt a_ack!193 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!193)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
