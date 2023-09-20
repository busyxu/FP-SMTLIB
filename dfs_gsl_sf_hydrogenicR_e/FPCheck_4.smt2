(declare-fun a_ack!47 () (_ BitVec 32))
(declare-fun b_ack!44 () (_ BitVec 32))
(declare-fun c_ack!45 () (_ BitVec 64))
(declare-fun d_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!47 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!47) b_ack!44)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!45))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!47)))

(check-sat)
(exit)
