(declare-fun x1_ack!2417 () (_ BitVec 64))
(declare-fun x0_ack!2424 () (_ BitVec 64))
(declare-fun x2_ack!2418 () (_ BitVec 64))
(declare-fun b_ack!2423 () (_ BitVec 64))
(declare-fun a_ack!2422 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2419 () (_ BitVec 64))
(declare-fun y1_ack!2420 () (_ BitVec 64))
(declare-fun y2_ack!2421 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2424) ((_ to_fp 11 53) x1_ack!2417)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2417) ((_ to_fp 11 53) x2_ack!2418)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2417)
                       ((_ to_fp 11 53) x0_ack!2424))
               ((_ to_fp 11 53) x0_ack!2424))
       ((_ to_fp 11 53) x1_ack!2417)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2417)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2417)
                       ((_ to_fp 11 53) x0_ack!2424)))
       ((_ to_fp 11 53) x0_ack!2424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2418)
                       ((_ to_fp 11 53) x1_ack!2417))
               ((_ to_fp 11 53) x1_ack!2417))
       ((_ to_fp 11 53) x2_ack!2418)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2418)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2418)
                       ((_ to_fp 11 53) x1_ack!2417)))
       ((_ to_fp 11 53) x1_ack!2417)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2417)
                    ((_ to_fp 11 53) x0_ack!2424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2418)
                    ((_ to_fp 11 53) x1_ack!2417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2422) ((_ to_fp 11 53) b_ack!2423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2422) ((_ to_fp 11 53) x0_ack!2424))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2423) ((_ to_fp 11 53) x2_ack!2418))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2422) ((_ to_fp 11 53) b_ack!2423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2422) ((_ to_fp 11 53) x0_ack!2424))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2422) ((_ to_fp 11 53) x1_ack!2417)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2417) ((_ to_fp 11 53) a_ack!2422))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2423) ((_ to_fp 11 53) x1_ack!2417))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2423) ((_ to_fp 11 53) x2_ack!2418))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2418)
                    ((_ to_fp 11 53) x1_ack!2417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2421)
                           ((_ to_fp 11 53) y1_ack!2420))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2418)
                                   ((_ to_fp 11 53) x1_ack!2417)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2420)
                           ((_ to_fp 11 53) y0_ack!2419))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2417)
                                   ((_ to_fp 11 53) x0_ack!2424)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2418)
                                   ((_ to_fp 11 53) x1_ack!2417))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2417)
                                   ((_ to_fp 11 53) x0_ack!2424))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2418)
                    ((_ to_fp 11 53) x1_ack!2417)))))))

(check-sat)
(exit)
