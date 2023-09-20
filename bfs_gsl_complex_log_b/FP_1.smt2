(declare-fun y1_ack!34 () (_ BitVec 64))
(declare-fun x1_ack!35 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!35))
             (fp.abs ((_ to_fp 11 53) y1_ack!34)))))

(check-sat)
(exit)
