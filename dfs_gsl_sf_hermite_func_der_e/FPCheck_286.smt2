(declare-fun a_ack!1850 () (_ BitVec 32))
(declare-fun b_ack!1848 () (_ BitVec 32))
(declare-fun c_ack!1849 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1850 #x00000000)))
(assert (not (bvslt b_ack!1848 #x00000000)))
(assert (= #x00000000 a_ack!1850))
(assert (not (bvslt b_ack!1848 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1849) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1848)))
(assert (= #x00000001 b_ack!1848))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #xbfe0000000000000)
                        ((_ to_fp 11 53) c_ack!1849)))
        ((_ to_fp 11 53) #x0010000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) c_ack!1849)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1849))
                           ((_ to_fp 11 53) c_ack!1849))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!1849)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!1849))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1849))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1849))
                           ((_ to_fp 11 53) c_ack!1849))
                   ((_ to_fp 11 53) c_ack!1849))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) c_ack!1849)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1849))
                           ((_ to_fp 11 53) c_ack!1849)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
            ((_ to_fp 11 53) c_ack!1849))
    a!1)))

(check-sat)
(exit)
