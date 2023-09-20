(declare-fun a_ack!117 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!116 () (_ BitVec 64))
(assert (not (bvslt a_ack!117 #x00000000)))
(assert (not (= #x00000000 a_ack!117)))
(assert (= #x00000001 a_ack!117))
(assert (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 (fp.abs ((_ to_fp 11 53) b_ack!116))))

(check-sat)
(exit)
