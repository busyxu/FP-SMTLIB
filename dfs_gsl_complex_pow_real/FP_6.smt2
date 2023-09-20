(declare-fun x1_ack!113 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!113) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
