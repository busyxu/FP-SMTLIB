(declare-fun a_ack!6 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
