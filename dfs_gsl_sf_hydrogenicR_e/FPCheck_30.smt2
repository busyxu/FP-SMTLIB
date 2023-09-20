(declare-fun a_ack!247 () (_ BitVec 32))
(declare-fun b_ack!244 () (_ BitVec 32))
(declare-fun c_ack!245 () (_ BitVec 64))
(declare-fun d_ack!246 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!247 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!247) b_ack!244)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!245))
                   ((_ to_fp 11 53) roundNearestTiesToEven a_ack!247))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!247)))))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
