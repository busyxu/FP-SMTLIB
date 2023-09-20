(declare-fun x1_ack!4018 () (_ BitVec 64))
(declare-fun x0_ack!4025 () (_ BitVec 64))
(declare-fun x2_ack!4019 () (_ BitVec 64))
(declare-fun b_ack!4024 () (_ BitVec 64))
(declare-fun a_ack!4023 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!4020 () (_ BitVec 64))
(declare-fun y1_ack!4021 () (_ BitVec 64))
(declare-fun y2_ack!4022 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4025) ((_ to_fp 11 53) x1_ack!4018)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4018) ((_ to_fp 11 53) x2_ack!4019)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4018)
                       ((_ to_fp 11 53) x0_ack!4025))
               ((_ to_fp 11 53) x0_ack!4025))
       ((_ to_fp 11 53) x1_ack!4018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4018)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4018)
                       ((_ to_fp 11 53) x0_ack!4025)))
       ((_ to_fp 11 53) x0_ack!4025)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4019)
                       ((_ to_fp 11 53) x1_ack!4018))
               ((_ to_fp 11 53) x1_ack!4018))
       ((_ to_fp 11 53) x2_ack!4019)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4019)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4019)
                       ((_ to_fp 11 53) x1_ack!4018)))
       ((_ to_fp 11 53) x1_ack!4018)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4018)
                    ((_ to_fp 11 53) x0_ack!4025))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4019)
                    ((_ to_fp 11 53) x1_ack!4018))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4023) ((_ to_fp 11 53) b_ack!4024))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4023) ((_ to_fp 11 53) x0_ack!4025))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4024) ((_ to_fp 11 53) x2_ack!4019))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4023) ((_ to_fp 11 53) b_ack!4024))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4023) ((_ to_fp 11 53) x0_ack!4025))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4023) ((_ to_fp 11 53) x1_ack!4018))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4024) ((_ to_fp 11 53) x0_ack!4025))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4024) ((_ to_fp 11 53) x1_ack!4018))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4018)
                    ((_ to_fp 11 53) x0_ack!4025))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4022)
                           ((_ to_fp 11 53) y1_ack!4021))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4019)
                                   ((_ to_fp 11 53) x1_ack!4018)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4021)
                           ((_ to_fp 11 53) y0_ack!4020))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4018)
                                   ((_ to_fp 11 53) x0_ack!4025)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4019)
                                   ((_ to_fp 11 53) x1_ack!4018))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4018)
                                   ((_ to_fp 11 53) x0_ack!4025))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
