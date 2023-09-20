(declare-fun x1_ack!20 () (_ BitVec 64))
(declare-fun x0_ack!22 () (_ BitVec 64))
(declare-fun y0_ack!21 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!22) ((_ to_fp 11 53) x1_ack!20))))
(assert (fp.geq ((_ to_fp 11 53) y0_ack!21) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
