(declare-fun x1_ack!1551 () (_ BitVec 64))
(declare-fun x0_ack!1555 () (_ BitVec 64))
(declare-fun x2_ack!1552 () (_ BitVec 64))
(declare-fun b_ack!1554 () (_ BitVec 64))
(declare-fun a_ack!1553 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1555) ((_ to_fp 11 53) x1_ack!1551)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1551) ((_ to_fp 11 53) x2_ack!1552)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1551)
                       ((_ to_fp 11 53) x0_ack!1555))
               ((_ to_fp 11 53) x0_ack!1555))
       ((_ to_fp 11 53) x1_ack!1551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1551)
                       ((_ to_fp 11 53) x0_ack!1555)))
       ((_ to_fp 11 53) x0_ack!1555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1552)
                       ((_ to_fp 11 53) x1_ack!1551))
               ((_ to_fp 11 53) x1_ack!1551))
       ((_ to_fp 11 53) x2_ack!1552)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1552)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1552)
                       ((_ to_fp 11 53) x1_ack!1551)))
       ((_ to_fp 11 53) x1_ack!1551)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1551)
                    ((_ to_fp 11 53) x0_ack!1555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1552)
                    ((_ to_fp 11 53) x1_ack!1551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) b_ack!1554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x0_ack!1555))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1554) ((_ to_fp 11 53) x2_ack!1552))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) b_ack!1554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x0_ack!1555))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x1_ack!1551))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1554) ((_ to_fp 11 53) x0_ack!1555)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1551)
                    ((_ to_fp 11 53) x0_ack!1555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1554)
                                  ((_ to_fp 11 53) x0_ack!1555)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1554)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1554)
                                   ((_ to_fp 11 53) x0_ack!1555)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1554)
                           ((_ to_fp 11 53) x0_ack!1555)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1554)
                 ((_ to_fp 11 53) x0_ack!1555)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1554)
                                  ((_ to_fp 11 53) x0_ack!1555)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1554)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1554)
                                   ((_ to_fp 11 53) x0_ack!1555)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1554)
                           ((_ to_fp 11 53) x0_ack!1555)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1554)
                 ((_ to_fp 11 53) x0_ack!1555)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1553)
          ((_ to_fp 11 53) x0_ack!1555))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1554)
          ((_ to_fp 11 53) x0_ack!1555))))

(check-sat)
(exit)
