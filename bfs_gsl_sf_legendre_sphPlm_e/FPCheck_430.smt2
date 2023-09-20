(declare-fun b_ack!2205 () (_ BitVec 32))
(declare-fun a_ack!2207 () (_ BitVec 32))
(declare-fun c_ack!2206 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2205 #x00000000)))
(assert (not (bvslt a_ack!2207 b_ack!2205)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!2205))
(assert (not (bvslt a_ack!2207 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!2207)))
(assert (not (= #x00000001 a_ack!2207)))
(assert (not (= #x00000002 a_ack!2207)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2206) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!2207 #x000186a0))
(assert (bvsle #x00000002 a_ack!2207))
(assert (bvsle #x00000003 a_ack!2207))
(assert (not (bvsle #x00000004 a_ack!2207)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2206)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!2206))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2206)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2206)))))
  (FPCHECK_FMUL_OVERFLOW
    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2207)
    (fp.abs (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4008000000000000)))))))

(check-sat)
(exit)
