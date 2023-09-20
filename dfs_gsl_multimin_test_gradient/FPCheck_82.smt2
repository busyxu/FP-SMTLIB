(declare-fun p0_ack!497 () (_ BitVec 64))
(declare-fun x0_ack!495 () (_ BitVec 64))
(declare-fun p2_ack!494 () (_ BitVec 64))
(declare-fun p1_ack!493 () (_ BitVec 64))
(declare-fun x1_ack!496 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!494))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!495)
                                  ((_ to_fp 11 53) p0_ack!497)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!494))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!495)
                                   ((_ to_fp 11 53) p0_ack!497))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!496)
                                  ((_ to_fp 11 53) p1_ack!493)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!494))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!495)
                                   ((_ to_fp 11 53) p0_ack!497))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!494))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!495)
                                   ((_ to_fp 11 53) p0_ack!497))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!494))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!495)
                           ((_ to_fp 11 53) p0_ack!497))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!496)
                           ((_ to_fp 11 53) p1_ack!493)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_INVALID
    (ite a!3 #x3ff0000000000000 #xbff0000000000000)
    (fp.mul roundNearestTiesToEven
            (fp.abs a!1)
            ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
