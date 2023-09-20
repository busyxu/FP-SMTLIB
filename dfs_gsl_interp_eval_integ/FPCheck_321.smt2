(declare-fun x1_ack!3876 () (_ BitVec 64))
(declare-fun x0_ack!3880 () (_ BitVec 64))
(declare-fun x2_ack!3877 () (_ BitVec 64))
(declare-fun b_ack!3879 () (_ BitVec 64))
(declare-fun a_ack!3878 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3880) ((_ to_fp 11 53) x1_ack!3876)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3876) ((_ to_fp 11 53) x2_ack!3877)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3876)
                       ((_ to_fp 11 53) x0_ack!3880))
               ((_ to_fp 11 53) x0_ack!3880))
       ((_ to_fp 11 53) x1_ack!3876)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3876)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3876)
                       ((_ to_fp 11 53) x0_ack!3880)))
       ((_ to_fp 11 53) x0_ack!3880)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3877)
                       ((_ to_fp 11 53) x1_ack!3876))
               ((_ to_fp 11 53) x1_ack!3876))
       ((_ to_fp 11 53) x2_ack!3877)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3877)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3877)
                       ((_ to_fp 11 53) x1_ack!3876)))
       ((_ to_fp 11 53) x1_ack!3876)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3876)
                    ((_ to_fp 11 53) x0_ack!3880))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3877)
                    ((_ to_fp 11 53) x1_ack!3876))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3878) ((_ to_fp 11 53) b_ack!3879))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3878) ((_ to_fp 11 53) x0_ack!3880))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3879) ((_ to_fp 11 53) x2_ack!3877))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3878) ((_ to_fp 11 53) b_ack!3879))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3878) ((_ to_fp 11 53) x0_ack!3880))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3878) ((_ to_fp 11 53) x1_ack!3876))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3879) ((_ to_fp 11 53) x0_ack!3880))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3879) ((_ to_fp 11 53) x1_ack!3876))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3876)
                    ((_ to_fp 11 53) x0_ack!3880))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3878)
                                   ((_ to_fp 11 53) x0_ack!3880))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3878)
                                   ((_ to_fp 11 53) x0_ack!3880)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3879)
                                   ((_ to_fp 11 53) x0_ack!3880))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3879)
                                   ((_ to_fp 11 53) x0_ack!3880))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3878)
                                   ((_ to_fp 11 53) x0_ack!3880))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3879)
                                   ((_ to_fp 11 53) x0_ack!3880))))))
  (FPCHECK_FMUL_OVERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
