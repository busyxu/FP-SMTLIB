(declare-fun a_ack!82 () (_ BitVec 64))
(declare-fun b_ack!81 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!82)) (fp.abs ((_ to_fp 11 53) b_ack!81))))

(check-sat)
(exit)
