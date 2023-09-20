(declare-fun b_ack!104 () (_ BitVec 32))
(declare-fun a_ack!105 () (_ BitVec 64))
(assert (bvslt b_ack!104 #x00000000))
(assert (fp.eq ((_ to_fp 11 53) a_ack!105) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!105) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
