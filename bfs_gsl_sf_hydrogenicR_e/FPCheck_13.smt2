(declare-fun a_ack!117 () (_ BitVec 32))
(declare-fun b_ack!114 () (_ BitVec 32))
(declare-fun c_ack!115 () (_ BitVec 64))
(declare-fun d_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!117 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!117) b_ack!114)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!115))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!117)))

(check-sat)
(exit)
