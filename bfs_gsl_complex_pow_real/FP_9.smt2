(declare-fun x1_ack!252 () (_ BitVec 64))
(declare-fun y1_ack!251 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!252) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!252))
        (fp.abs ((_ to_fp 11 53) y1_ack!251))))

(check-sat)
(exit)
