(declare-fun a_ack!25 () (_ BitVec 32))
(declare-fun b_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!25 #x00000000)))
(assert (not (= #x00000000 a_ack!25)))
(assert (not (= #x00000001 a_ack!25)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!24))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!25))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!24))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!25))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!24)
                                   ((_ to_fp 11 53) b_ack!24))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!24))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_UNDERFLOW
  b_ack!24
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!24)
                  ((_ to_fp 11 53) b_ack!24))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
