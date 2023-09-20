(declare-fun b_ack!1446 () (_ BitVec 32))
(declare-fun a_ack!1448 () (_ BitVec 32))
(declare-fun c_ack!1447 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1446 #x00000000)))
(assert (not (bvslt a_ack!1448 b_ack!1446)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!1446)))
(assert (= #x00000001 b_ack!1446))
(assert (not (bvslt b_ack!1446 #x00000000)))
(assert (not (bvslt a_ack!1448 b_ack!1446)))
(assert (not (= #x00000000 b_ack!1446)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!1448 b_ack!1446))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!1448 b_ack!1446))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt b_ack!1446 #x00000000)))
(assert (not (bvslt a_ack!1448 b_ack!1446)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!1446))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1447) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1448))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc085d32bdd7abcd2))))))
(assert (not (= #x00000000 b_ack!1446)))
(assert (bvsle #x00000001 b_ack!1446))
(assert (not (bvsle #x00000002 b_ack!1446)))
(assert (= a_ack!1448 b_ack!1446))
(assert (= #x00000001 b_ack!1446))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!1447)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (= #x00000002 b_ack!1446)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!1447)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 b_ack!1446))
                           ((_ to_fp 11 53) c_ack!1447))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1447))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1447))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x7ff0000000000001)))

(check-sat)
(exit)
