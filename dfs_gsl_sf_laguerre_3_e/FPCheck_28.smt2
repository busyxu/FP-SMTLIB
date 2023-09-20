(declare-fun a_ack!106 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!105 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!106) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW #x4008000000000000 (fp.abs ((_ to_fp 11 53) b_ack!105))))

(check-sat)
(exit)
