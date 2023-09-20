(declare-fun a_ack!15 () (_ BitVec 32))
(declare-fun b_ack!13 () (_ BitVec 32))
(declare-fun c_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!13 a_ack!15)))
(assert (not (bvslt a_ack!15 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!14) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!13)))
(assert (FPCHECK_FDIV_UNDERFLOW #x4000000000000000 (fp.abs ((_ to_fp 11 53) c_ack!14))))

(check-sat)
(exit)
