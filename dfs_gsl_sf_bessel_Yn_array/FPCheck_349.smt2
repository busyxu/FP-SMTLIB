(declare-fun a_ack!1409 () (_ BitVec 32))
(declare-fun b_ack!1407 () (_ BitVec 32))
(declare-fun c_ack!1408 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1409 #x00000000)))
(assert (not (bvslt b_ack!1407 a_ack!1409)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1409 #x00000000)))
(assert (not (= #x00000000 a_ack!1409)))
(assert (= #x00000001 a_ack!1409))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1408) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1408) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1408))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1408))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1408))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1408))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1408))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1408)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) c_ack!1408))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) c_ack!1408)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1408))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1408)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) c_ack!1408)))))
  (fp.eq a!2 a!1))))
(assert (FPCHECK_FDIV_UNDERFLOW #xbfe45f306dc9c882 c_ack!1408))

(check-sat)
(exit)
