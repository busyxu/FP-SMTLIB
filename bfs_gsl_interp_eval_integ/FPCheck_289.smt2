(declare-fun x1_ack!3542 () (_ BitVec 64))
(declare-fun x0_ack!3549 () (_ BitVec 64))
(declare-fun x2_ack!3543 () (_ BitVec 64))
(declare-fun b_ack!3548 () (_ BitVec 64))
(declare-fun a_ack!3547 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!3544 () (_ BitVec 64))
(declare-fun y1_ack!3545 () (_ BitVec 64))
(declare-fun y2_ack!3546 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3549) ((_ to_fp 11 53) x1_ack!3542)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3542) ((_ to_fp 11 53) x2_ack!3543)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3542)
                       ((_ to_fp 11 53) x0_ack!3549))
               ((_ to_fp 11 53) x0_ack!3549))
       ((_ to_fp 11 53) x1_ack!3542)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3542)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3542)
                       ((_ to_fp 11 53) x0_ack!3549)))
       ((_ to_fp 11 53) x0_ack!3549)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3543)
                       ((_ to_fp 11 53) x1_ack!3542))
               ((_ to_fp 11 53) x1_ack!3542))
       ((_ to_fp 11 53) x2_ack!3543)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3543)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3543)
                       ((_ to_fp 11 53) x1_ack!3542)))
       ((_ to_fp 11 53) x1_ack!3542)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3542)
                    ((_ to_fp 11 53) x0_ack!3549))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3543)
                    ((_ to_fp 11 53) x1_ack!3542))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) b_ack!3548))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x0_ack!3549))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x2_ack!3543))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) b_ack!3548))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x0_ack!3549))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x1_ack!3542)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3542) ((_ to_fp 11 53) a_ack!3547))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x1_ack!3542))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x2_ack!3543)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3543)
                    ((_ to_fp 11 53) x1_ack!3542))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3546)
                           ((_ to_fp 11 53) y1_ack!3545))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3543)
                                   ((_ to_fp 11 53) x1_ack!3542)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3545)
                           ((_ to_fp 11 53) y0_ack!3544))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3542)
                                   ((_ to_fp 11 53) x0_ack!3549)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3543)
                                   ((_ to_fp 11 53) x1_ack!3542))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3542)
                                   ((_ to_fp 11 53) x0_ack!3549))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3543)
                    ((_ to_fp 11 53) x1_ack!3542))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
