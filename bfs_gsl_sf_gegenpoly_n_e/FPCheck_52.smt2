(declare-fun b_ack!311 () (_ BitVec 64))
(declare-fun a_ack!313 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!312 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!311) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!313 #x00000000)))
(assert (not (= #x00000000 a_ack!313)))
(assert (not (= #x00000001 a_ack!313)))
(assert (= #x00000002 a_ack!313))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!311)))
                   ((_ to_fp 11 53) c_ack!312))))
  (FPCHECK_FMUL_UNDERFLOW
    b_ack!311
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #xbff0000000000000)
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!312))))))

(check-sat)
(exit)
