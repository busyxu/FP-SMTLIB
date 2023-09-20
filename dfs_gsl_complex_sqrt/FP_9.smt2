(declare-fun x_ack!178 () (_ BitVec 64))
(declare-fun y_ack!177 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!178))
        (fp.abs ((_ to_fp 11 53) y_ack!177))))

(check-sat)
(exit)
