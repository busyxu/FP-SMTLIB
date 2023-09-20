(declare-fun x_ack!186 () (_ BitVec 64))
(declare-fun y_ack!185 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!186) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!186))
        (fp.abs ((_ to_fp 11 53) y_ack!185))))

(check-sat)
(exit)
