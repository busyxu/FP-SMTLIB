(declare-fun b_ack!82 () (_ BitVec 64))
(declare-fun a_ack!83 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!83) ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
