(declare-fun y1_ack!790 () (_ BitVec 64))
(declare-fun x1_ack!791 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!791))
             (fp.abs ((_ to_fp 11 53) y1_ack!790)))))

(check-sat)
(exit)
