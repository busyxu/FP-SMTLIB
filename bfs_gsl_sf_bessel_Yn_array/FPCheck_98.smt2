(declare-fun a_ack!430 () (_ BitVec 32))
(declare-fun b_ack!428 () (_ BitVec 32))
(declare-fun c_ack!429 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!430 #x00000000)))
(assert (not (bvslt b_ack!428 a_ack!430)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!430 #x00000000)))
(assert (not (= #x00000000 a_ack!430)))
(assert (= #x00000001 a_ack!430))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) c_ack!429))
                           ((_ to_fp 11 53) c_ack!429))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
