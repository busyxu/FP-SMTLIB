(declare-fun x1_ack!4503 () (_ BitVec 64))
(declare-fun x0_ack!4507 () (_ BitVec 64))
(declare-fun x2_ack!4504 () (_ BitVec 64))
(declare-fun b_ack!4506 () (_ BitVec 64))
(declare-fun a_ack!4505 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4507) ((_ to_fp 11 53) x1_ack!4503)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4503) ((_ to_fp 11 53) x2_ack!4504)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4503)
                       ((_ to_fp 11 53) x0_ack!4507))
               ((_ to_fp 11 53) x0_ack!4507))
       ((_ to_fp 11 53) x1_ack!4503)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4503)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4503)
                       ((_ to_fp 11 53) x0_ack!4507)))
       ((_ to_fp 11 53) x0_ack!4507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4504)
                       ((_ to_fp 11 53) x1_ack!4503))
               ((_ to_fp 11 53) x1_ack!4503))
       ((_ to_fp 11 53) x2_ack!4504)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4504)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4504)
                       ((_ to_fp 11 53) x1_ack!4503)))
       ((_ to_fp 11 53) x1_ack!4503)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4503)
                    ((_ to_fp 11 53) x0_ack!4507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4504)
                    ((_ to_fp 11 53) x1_ack!4503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4505) ((_ to_fp 11 53) b_ack!4506))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4505) ((_ to_fp 11 53) x0_ack!4507))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4506) ((_ to_fp 11 53) x2_ack!4504))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4505) ((_ to_fp 11 53) b_ack!4506))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4505) ((_ to_fp 11 53) x0_ack!4507))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4505) ((_ to_fp 11 53) x1_ack!4503))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4506) ((_ to_fp 11 53) x0_ack!4507))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4506) ((_ to_fp 11 53) x1_ack!4503))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4503)
                    ((_ to_fp 11 53) x0_ack!4507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4505)
                                   ((_ to_fp 11 53) x0_ack!4507))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4505)
                                   ((_ to_fp 11 53) x0_ack!4507)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4506)
                                   ((_ to_fp 11 53) x0_ack!4507))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4506)
                                   ((_ to_fp 11 53) x0_ack!4507))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4505)
                                   ((_ to_fp 11 53) x0_ack!4507))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4506)
                                   ((_ to_fp 11 53) x0_ack!4507))))))
  (FPCHECK_FMUL_OVERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
