(declare-fun a_ack!104 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (bvslt #x00000064 a_ack!104)))
(assert (not (bvsle #x00000000 a_ack!104)))
(assert (not (= #x00000000 (bvand a_ack!104 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!104)))
(assert (bvslt a_ack!104 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!104 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!104)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!104)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!104)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!104)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!104)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4000000000000000 a!1))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4008000000000000 a!1)))
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (CF_pow #x4014000000000000 a!1)))))

(check-sat)
(exit)
