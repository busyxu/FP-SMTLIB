(declare-fun a_ack!20 () (_ BitVec 32))
(declare-fun b_ack!18 () (_ BitVec 32))
(declare-fun c_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!18 a_ack!20)))
(assert (not (bvslt a_ack!20 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!18)))
(assert (FPCHECK_FDIV_UNDERFLOW #x4000000000000000 (fp.abs ((_ to_fp 11 53) c_ack!19))))

(check-sat)
(exit)
