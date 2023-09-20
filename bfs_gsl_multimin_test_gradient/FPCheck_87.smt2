(declare-fun p0_ack!537 () (_ BitVec 64))
(declare-fun x0_ack!534 () (_ BitVec 64))
(declare-fun p2_ack!533 () (_ BitVec 64))
(declare-fun p1_ack!532 () (_ BitVec 64))
(declare-fun x1_ack!535 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun step_size_ack!536 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!533))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!534)
                                  ((_ to_fp 11 53) p0_ack!537)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!534)
                                   ((_ to_fp 11 53) p0_ack!537))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!535)
                                  ((_ to_fp 11 53) p1_ack!532)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!534)
                                   ((_ to_fp 11 53) p0_ack!537))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!534)
                                   ((_ to_fp 11 53) p0_ack!537))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!534)
                           ((_ to_fp 11 53) p0_ack!537))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!535)
                           ((_ to_fp 11 53) p1_ack!532)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            ((_ to_fp 11 53) step_size_ack!536))
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) (ite a!3 #x3ff0000000000000 #xbff0000000000000))
            (fp.mul roundNearestTiesToEven
                    (fp.abs a!1)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))))

(check-sat)
(exit)
