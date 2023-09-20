(declare-fun b_ack!1712 () (_ BitVec 64))
(declare-fun a_ack!1713 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1712) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1712) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1713 #x00000000)))
(assert (not (= #x00000000 a_ack!1713)))
(assert (not (= #x00000001 a_ack!1713)))
(assert (bvslt #x000186a0 a_ack!1713))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1712) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1712)
                                  ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                          ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                  ((_ to_fp 11 53) b_ack!1712))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1712)
                                  ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1712)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1712)
                       ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
       ((_ to_fp 11 53) #x3ffbb67ae8584caa)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff5124271980434)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1712)
                           ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff5124271980434)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1712)
                           ((_ to_fp 11 53) #x3ffbb67ae8584caa)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5124271980434)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1712)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #xbfc0000000000000) a!1)
    #x3ffbc00340c28d5f)))

(check-sat)
(exit)
