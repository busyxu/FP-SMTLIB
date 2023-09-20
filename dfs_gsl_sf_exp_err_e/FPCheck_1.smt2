(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun a_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!5 (fp.abs ((_ to_fp 11 53) b_ack!4))))

(check-sat)
(exit)
