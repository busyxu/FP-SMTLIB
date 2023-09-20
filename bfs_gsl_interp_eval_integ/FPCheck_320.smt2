(declare-fun x1_ack!4002 () (_ BitVec 64))
(declare-fun x0_ack!4009 () (_ BitVec 64))
(declare-fun x2_ack!4003 () (_ BitVec 64))
(declare-fun b_ack!4008 () (_ BitVec 64))
(declare-fun a_ack!4007 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!4004 () (_ BitVec 64))
(declare-fun y1_ack!4005 () (_ BitVec 64))
(declare-fun y2_ack!4006 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4009) ((_ to_fp 11 53) x1_ack!4002)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4002) ((_ to_fp 11 53) x2_ack!4003)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4002)
                       ((_ to_fp 11 53) x0_ack!4009))
               ((_ to_fp 11 53) x0_ack!4009))
       ((_ to_fp 11 53) x1_ack!4002)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4002)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4002)
                       ((_ to_fp 11 53) x0_ack!4009)))
       ((_ to_fp 11 53) x0_ack!4009)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4003)
                       ((_ to_fp 11 53) x1_ack!4002))
               ((_ to_fp 11 53) x1_ack!4002))
       ((_ to_fp 11 53) x2_ack!4003)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4003)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4003)
                       ((_ to_fp 11 53) x1_ack!4002)))
       ((_ to_fp 11 53) x1_ack!4002)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4002)
                    ((_ to_fp 11 53) x0_ack!4009))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4003)
                    ((_ to_fp 11 53) x1_ack!4002))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4007) ((_ to_fp 11 53) b_ack!4008))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4007) ((_ to_fp 11 53) x0_ack!4009))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4008) ((_ to_fp 11 53) x2_ack!4003))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4007) ((_ to_fp 11 53) b_ack!4008))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4007) ((_ to_fp 11 53) x0_ack!4009))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4007) ((_ to_fp 11 53) x1_ack!4002))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4008) ((_ to_fp 11 53) x0_ack!4009))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4008) ((_ to_fp 11 53) x1_ack!4002))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4002)
                    ((_ to_fp 11 53) x0_ack!4009))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4006)
                           ((_ to_fp 11 53) y1_ack!4005))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4003)
                                   ((_ to_fp 11 53) x1_ack!4002)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4005)
                           ((_ to_fp 11 53) y0_ack!4004))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4002)
                                   ((_ to_fp 11 53) x0_ack!4009)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4003)
                                   ((_ to_fp 11 53) x1_ack!4002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4002)
                                   ((_ to_fp 11 53) x0_ack!4009))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
