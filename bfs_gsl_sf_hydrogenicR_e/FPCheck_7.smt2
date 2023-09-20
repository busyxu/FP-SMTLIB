(declare-fun a_ack!65 () (_ BitVec 32))
(declare-fun b_ack!62 () (_ BitVec 32))
(declare-fun c_ack!63 () (_ BitVec 64))
(declare-fun d_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!65 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!65) b_ack!62)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!63))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!65)))

(check-sat)
(exit)
