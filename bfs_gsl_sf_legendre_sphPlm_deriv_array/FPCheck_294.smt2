(declare-fun b_ack!1461 () (_ BitVec 32))
(declare-fun a_ack!1463 () (_ BitVec 32))
(declare-fun c_ack!1462 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1461 #x00000000)))
(assert (not (bvslt a_ack!1463 b_ack!1461)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!1461)))
(assert (= #x00000001 b_ack!1461))
(assert (not (bvslt b_ack!1461 #x00000000)))
(assert (not (bvslt a_ack!1463 b_ack!1461)))
(assert (not (= #x00000000 b_ack!1461)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!1463 b_ack!1461))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!1463 b_ack!1461))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt b_ack!1461 #x00000000)))
(assert (not (bvslt a_ack!1463 b_ack!1461)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!1461))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1463))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc085d32bdd7abcd2))))))
(assert (not (= #x00000000 b_ack!1461)))
(assert (bvsle #x00000001 b_ack!1461))
(assert (not (bvsle #x00000002 b_ack!1461)))
(assert (= a_ack!1463 b_ack!1461))
(assert (= #x00000001 b_ack!1461))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!1462)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (= #x00000002 b_ack!1461)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!1462)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (bvsle #x00000001 (bvsub a_ack!1463 b_ack!1461))))
(assert (not (bvsle (bvadd #x00000002 b_ack!1461) a_ack!1463)))
(assert (bvsle #x00000001 a_ack!1463))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 b_ack!1461))
                           ((_ to_fp 11 53) c_ack!1462))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1462))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1462))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x7ff0000000000001))
    #x3fd61c937e3c1404)))

(check-sat)
(exit)
