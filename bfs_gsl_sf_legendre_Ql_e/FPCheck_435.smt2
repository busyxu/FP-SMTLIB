(declare-fun b_ack!1392 () (_ BitVec 64))
(declare-fun a_ack!1393 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1393 #x00000000)))
(assert (not (= #x00000000 a_ack!1393)))
(assert (not (= #x00000001 a_ack!1393)))
(assert (bvslt #x000186a0 a_ack!1393))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1392)
                                  ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                          ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                  ((_ to_fp 11 53) b_ack!1392))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1392)
                                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1392)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1392)
                       ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
       ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff5124271980434)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1392)
                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))

(check-sat)
(exit)
