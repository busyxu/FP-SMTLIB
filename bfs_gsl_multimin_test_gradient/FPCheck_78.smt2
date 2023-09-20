(declare-fun p0_ack!437 () (_ BitVec 64))
(declare-fun x0_ack!435 () (_ BitVec 64))
(declare-fun p2_ack!434 () (_ BitVec 64))
(declare-fun p1_ack!433 () (_ BitVec 64))
(declare-fun x1_ack!436 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!434))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!435)
                                  ((_ to_fp 11 53) p0_ack!437)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!434))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!435)
                                   ((_ to_fp 11 53) p0_ack!437))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!436)
                                  ((_ to_fp 11 53) p1_ack!433)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!434))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!435)
                                   ((_ to_fp 11 53) p0_ack!437))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!434))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!435)
                                   ((_ to_fp 11 53) p0_ack!437))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!434))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!435)
                           ((_ to_fp 11 53) p0_ack!437))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!436)
                           ((_ to_fp 11 53) p1_ack!433)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1))
    (fp.mul roundNearestTiesToEven a!2 a!2))))

(check-sat)
(exit)
