(declare-fun a_ack!1865 () (_ BitVec 32))
(declare-fun b_ack!1863 () (_ BitVec 32))
(declare-fun c_ack!1864 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1865 #x00000000)))
(assert (not (bvslt b_ack!1863 #x00000000)))
(assert (= #x00000000 a_ack!1865))
(assert (not (bvslt b_ack!1863 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1864) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1863)))
(assert (= #x00000001 b_ack!1863))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #xbfe0000000000000)
                        ((_ to_fp 11 53) c_ack!1864)))
        ((_ to_fp 11 53) #x0010000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) c_ack!1864)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1864))
                           ((_ to_fp 11 53) c_ack!1864))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!1864)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!1864))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1864))
                           ((_ to_fp 11 53) c_ack!1864))
                   ((_ to_fp 11 53) c_ack!1864))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) c_ack!1864)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1864))
                           ((_ to_fp 11 53) c_ack!1864)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                    ((_ to_fp 11 53) c_ack!1864))
            a!1)
    #x3ff54d264f787eb7)))

(check-sat)
(exit)
