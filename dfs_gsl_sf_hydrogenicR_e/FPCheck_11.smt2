(declare-fun a_ack!103 () (_ BitVec 32))
(declare-fun b_ack!100 () (_ BitVec 32))
(declare-fun c_ack!101 () (_ BitVec 64))
(declare-fun d_ack!102 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!103 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!103) b_ack!100)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!101) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!101))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!103)))

(check-sat)
(exit)
