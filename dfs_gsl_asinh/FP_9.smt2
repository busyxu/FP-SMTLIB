(declare-fun a_ack!50 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!50)) ((_ to_fp 11 53) #x4190000000000000)))

(check-sat)
(exit)
