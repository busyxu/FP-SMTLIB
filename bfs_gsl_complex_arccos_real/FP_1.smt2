(declare-fun x_ack!2 () (_ BitVec 64))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!2))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!2) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
