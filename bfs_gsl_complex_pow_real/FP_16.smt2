(declare-fun x1_ack!314 () (_ BitVec 64))
(declare-fun y1_ack!313 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!314) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!314))
        (fp.abs ((_ to_fp 11 53) y1_ack!313))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!314) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
