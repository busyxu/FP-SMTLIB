(declare-fun x1_ack!7665 () (_ BitVec 64))
(declare-fun x0_ack!7672 () (_ BitVec 64))
(declare-fun x2_ack!7666 () (_ BitVec 64))
(declare-fun b_ack!7671 () (_ BitVec 64))
(declare-fun a_ack!7670 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7667 () (_ BitVec 64))
(declare-fun y1_ack!7668 () (_ BitVec 64))
(declare-fun y2_ack!7669 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7672) ((_ to_fp 11 53) x1_ack!7665)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7665) ((_ to_fp 11 53) x2_ack!7666)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7665)
                       ((_ to_fp 11 53) x0_ack!7672))
               ((_ to_fp 11 53) x0_ack!7672))
       ((_ to_fp 11 53) x1_ack!7665)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7665)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7665)
                       ((_ to_fp 11 53) x0_ack!7672)))
       ((_ to_fp 11 53) x0_ack!7672)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7666)
                       ((_ to_fp 11 53) x1_ack!7665))
               ((_ to_fp 11 53) x1_ack!7665))
       ((_ to_fp 11 53) x2_ack!7666)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7666)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7666)
                       ((_ to_fp 11 53) x1_ack!7665)))
       ((_ to_fp 11 53) x1_ack!7665)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7665)
                    ((_ to_fp 11 53) x0_ack!7672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7666)
                    ((_ to_fp 11 53) x1_ack!7665))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7670) ((_ to_fp 11 53) b_ack!7671))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7670) ((_ to_fp 11 53) x0_ack!7672))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7671) ((_ to_fp 11 53) x2_ack!7666))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7670) ((_ to_fp 11 53) b_ack!7671))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7670) ((_ to_fp 11 53) x0_ack!7672))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7670) ((_ to_fp 11 53) x1_ack!7665))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7671) ((_ to_fp 11 53) x0_ack!7672)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7665)
                    ((_ to_fp 11 53) x0_ack!7672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7669)
                           ((_ to_fp 11 53) y1_ack!7668))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7666)
                                   ((_ to_fp 11 53) x1_ack!7665)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7668)
                           ((_ to_fp 11 53) y0_ack!7667))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7665)
                                   ((_ to_fp 11 53) x0_ack!7672)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7666)
                                   ((_ to_fp 11 53) x1_ack!7665))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7665)
                                   ((_ to_fp 11 53) x0_ack!7672))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7665)
                    ((_ to_fp 11 53) x0_ack!7672)))))))

(check-sat)
(exit)
