(declare-fun x1_ack!1162 () (_ BitVec 64))
(declare-fun x0_ack!1164 () (_ BitVec 64))
(declare-fun y0_ack!1163 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1164) ((_ to_fp 11 53) x1_ack!1162))))
(assert (fp.geq ((_ to_fp 11 53) y0_ack!1163) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
