(declare-fun y_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun x_ack!6 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW (fp.abs ((_ to_fp 11 53) x_ack!6)) #x3ff0000000000000))

(check-sat)
(exit)
