(declare-fun a_ack!2934 () (_ BitVec 32))
(declare-fun b_ack!2932 () (_ BitVec 32))
(declare-fun c_ack!2933 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2934 #x00000000)))
(assert (not (bvslt b_ack!2932 #x00000000)))
(assert (not (= #x00000000 a_ack!2934)))
(assert (= #x00000001 a_ack!2934))
(assert (bvsle #x00000002 b_ack!2932))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2933))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2933))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (bvsle #x00000003 b_ack!2932))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2933))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2933))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fea20bd700c2c3e)
            ((_ to_fp 11 53) c_ack!2933))
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))))

(check-sat)
(exit)
