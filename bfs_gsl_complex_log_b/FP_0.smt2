(declare-fun y1_ack!14 () (_ BitVec 64))
(declare-fun x1_ack!15 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!15))
             (fp.abs ((_ to_fp 11 53) y1_ack!14)))))

(check-sat)
(exit)
