(declare-fun x1_ack!2551 () (_ BitVec 64))
(declare-fun x0_ack!2555 () (_ BitVec 64))
(declare-fun x2_ack!2552 () (_ BitVec 64))
(declare-fun b_ack!2554 () (_ BitVec 64))
(declare-fun a_ack!2553 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2555) ((_ to_fp 11 53) x1_ack!2551)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2551) ((_ to_fp 11 53) x2_ack!2552)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2551)
                       ((_ to_fp 11 53) x0_ack!2555))
               ((_ to_fp 11 53) x0_ack!2555))
       ((_ to_fp 11 53) x1_ack!2551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2551)
                       ((_ to_fp 11 53) x0_ack!2555)))
       ((_ to_fp 11 53) x0_ack!2555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2552)
                       ((_ to_fp 11 53) x1_ack!2551))
               ((_ to_fp 11 53) x1_ack!2551))
       ((_ to_fp 11 53) x2_ack!2552)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2552)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2552)
                       ((_ to_fp 11 53) x1_ack!2551)))
       ((_ to_fp 11 53) x1_ack!2551)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2551)
                    ((_ to_fp 11 53) x0_ack!2555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2552)
                    ((_ to_fp 11 53) x1_ack!2551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2553) ((_ to_fp 11 53) b_ack!2554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2553) ((_ to_fp 11 53) x0_ack!2555))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2554) ((_ to_fp 11 53) x2_ack!2552))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2553) ((_ to_fp 11 53) b_ack!2554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2553) ((_ to_fp 11 53) x0_ack!2555))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2553) ((_ to_fp 11 53) x1_ack!2551))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2554) ((_ to_fp 11 53) x0_ack!2555))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2554) ((_ to_fp 11 53) x1_ack!2551)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2551) ((_ to_fp 11 53) b_ack!2554))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2551)
                    ((_ to_fp 11 53) x0_ack!2555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2552)
                    ((_ to_fp 11 53) x1_ack!2551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2551)
                                   ((_ to_fp 11 53) x1_ack!2551))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2551)
                                   ((_ to_fp 11 53) x1_ack!2551)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2554)
                                   ((_ to_fp 11 53) x1_ack!2551))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2554)
                                   ((_ to_fp 11 53) x1_ack!2551))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2551)
                    ((_ to_fp 11 53) x1_ack!2551))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2554)
                    ((_ to_fp 11 53) x1_ack!2551))))))

(check-sat)
(exit)
