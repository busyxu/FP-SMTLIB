(declare-fun y_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun x_ack!12 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW (fp.abs ((_ to_fp 11 53) x_ack!12)) #x3ff0000000000000))

(check-sat)
(exit)
