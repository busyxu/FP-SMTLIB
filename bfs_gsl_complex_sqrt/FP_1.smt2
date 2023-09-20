(declare-fun x_ack!18 () (_ BitVec 64))
(declare-fun y_ack!17 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!18) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!17) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
