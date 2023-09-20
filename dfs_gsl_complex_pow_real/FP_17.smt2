(declare-fun x1_ack!337 () (_ BitVec 64))
(declare-fun y1_ack!336 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!337))
        (fp.abs ((_ to_fp 11 53) y1_ack!336))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!337) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
