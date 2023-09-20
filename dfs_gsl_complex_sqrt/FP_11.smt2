(declare-fun x_ack!216 () (_ BitVec 64))
(declare-fun y_ack!215 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!216))
        (fp.abs ((_ to_fp 11 53) y_ack!215))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!216) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
