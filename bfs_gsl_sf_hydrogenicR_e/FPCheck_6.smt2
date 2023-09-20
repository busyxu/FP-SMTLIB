(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun b_ack!58 () (_ BitVec 32))
(declare-fun c_ack!59 () (_ BitVec 64))
(declare-fun d_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!61 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!61) b_ack!58)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!59))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!61)))

(check-sat)
(exit)
