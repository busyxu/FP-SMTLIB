(declare-fun y_ack!92 () (_ BitVec 64))
(declare-fun x_ack!93 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!93))
             (fp.abs ((_ to_fp 11 53) y_ack!92)))))

(check-sat)
(exit)
