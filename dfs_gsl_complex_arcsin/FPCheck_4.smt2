(declare-fun y_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun x_ack!20 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW (fp.abs ((_ to_fp 11 53) x_ack!20)) #x3ff0000000000000))

(check-sat)
(exit)
