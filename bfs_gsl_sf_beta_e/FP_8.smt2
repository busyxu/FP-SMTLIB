(declare-fun a_ack!71 () (_ BitVec 64))
(declare-fun b_ack!70 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!70) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
