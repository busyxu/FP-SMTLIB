(declare-fun x1_ack!271 () (_ BitVec 64))
(declare-fun y1_ack!270 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!271) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!271))
        (fp.abs ((_ to_fp 11 53) y1_ack!270))))

(check-sat)
(exit)
