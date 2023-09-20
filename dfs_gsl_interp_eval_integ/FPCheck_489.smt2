(declare-fun x1_ack!6109 () (_ BitVec 64))
(declare-fun x0_ack!6116 () (_ BitVec 64))
(declare-fun x2_ack!6110 () (_ BitVec 64))
(declare-fun b_ack!6115 () (_ BitVec 64))
(declare-fun a_ack!6114 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!6111 () (_ BitVec 64))
(declare-fun y1_ack!6112 () (_ BitVec 64))
(declare-fun y2_ack!6113 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6116) ((_ to_fp 11 53) x1_ack!6109)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6109) ((_ to_fp 11 53) x2_ack!6110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6109)
                       ((_ to_fp 11 53) x0_ack!6116))
               ((_ to_fp 11 53) x0_ack!6116))
       ((_ to_fp 11 53) x1_ack!6109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6109)
                       ((_ to_fp 11 53) x0_ack!6116)))
       ((_ to_fp 11 53) x0_ack!6116)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6110)
                       ((_ to_fp 11 53) x1_ack!6109))
               ((_ to_fp 11 53) x1_ack!6109))
       ((_ to_fp 11 53) x2_ack!6110)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6110)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6110)
                       ((_ to_fp 11 53) x1_ack!6109)))
       ((_ to_fp 11 53) x1_ack!6109)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6109)
                    ((_ to_fp 11 53) x0_ack!6116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6110)
                    ((_ to_fp 11 53) x1_ack!6109))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6114) ((_ to_fp 11 53) b_ack!6115))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6114) ((_ to_fp 11 53) x0_ack!6116))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6115) ((_ to_fp 11 53) x2_ack!6110))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6114) ((_ to_fp 11 53) b_ack!6115))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6114) ((_ to_fp 11 53) x0_ack!6116))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6114) ((_ to_fp 11 53) x1_ack!6109)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6109) ((_ to_fp 11 53) a_ack!6114))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6115) ((_ to_fp 11 53) x1_ack!6109))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6115) ((_ to_fp 11 53) x2_ack!6110))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6110)
                    ((_ to_fp 11 53) x1_ack!6109))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6113)
                           ((_ to_fp 11 53) y1_ack!6112))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6110)
                                   ((_ to_fp 11 53) x1_ack!6109)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6112)
                           ((_ to_fp 11 53) y0_ack!6111))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6109)
                                   ((_ to_fp 11 53) x0_ack!6116)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6110)
                                   ((_ to_fp 11 53) x1_ack!6109))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6109)
                                   ((_ to_fp 11 53) x0_ack!6116))))))
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
                    ((_ to_fp 11 53) x2_ack!6110)
                    ((_ to_fp 11 53) x1_ack!6109))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
