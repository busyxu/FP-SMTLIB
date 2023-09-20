(declare-fun a_ack!2271 () (_ BitVec 32))
(declare-fun b_ack!2269 () (_ BitVec 32))
(declare-fun c_ack!2270 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!2271 #x00000000)))
(assert (not (bvslt b_ack!2269 #x00000000)))
(assert (not (= #x00000000 a_ack!2271)))
(assert (= #x00000001 a_ack!2271))
(assert (bvsle #x00000002 b_ack!2269))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2270))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2270))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (not (bvsle #x00000003 b_ack!2269)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2270))
                   ((_ to_fp 11 53) #x3fe8093870155910)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2270))
                           ((_ to_fp 11 53) c_ack!2270))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2270))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!1)
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!2270) a!2))
    (CF_exp a!3)))))

(check-sat)
(exit)
