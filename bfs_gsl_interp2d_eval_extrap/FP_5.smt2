(declare-fun x1_ack!118 () (_ BitVec 64))
(declare-fun x0_ack!122 () (_ BitVec 64))
(declare-fun y0_ack!119 () (_ BitVec 64))
(declare-fun x_ack!120 () (_ BitVec 64))
(declare-fun y_ack!121 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!122) ((_ to_fp 11 53) x1_ack!118))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!119) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!120) ((_ to_fp 11 53) x0_ack!122))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!120) ((_ to_fp 11 53) x1_ack!118))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!121) ((_ to_fp 11 53) y0_ack!119))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!121) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
