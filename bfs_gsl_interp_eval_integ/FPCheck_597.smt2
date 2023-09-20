(declare-fun x1_ack!7510 () (_ BitVec 64))
(declare-fun x0_ack!7517 () (_ BitVec 64))
(declare-fun x2_ack!7511 () (_ BitVec 64))
(declare-fun b_ack!7516 () (_ BitVec 64))
(declare-fun a_ack!7515 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7512 () (_ BitVec 64))
(declare-fun y1_ack!7513 () (_ BitVec 64))
(declare-fun y2_ack!7514 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7517) ((_ to_fp 11 53) x1_ack!7510)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7510) ((_ to_fp 11 53) x2_ack!7511)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7510)
                       ((_ to_fp 11 53) x0_ack!7517))
               ((_ to_fp 11 53) x0_ack!7517))
       ((_ to_fp 11 53) x1_ack!7510)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7510)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7510)
                       ((_ to_fp 11 53) x0_ack!7517)))
       ((_ to_fp 11 53) x0_ack!7517)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7511)
                       ((_ to_fp 11 53) x1_ack!7510))
               ((_ to_fp 11 53) x1_ack!7510))
       ((_ to_fp 11 53) x2_ack!7511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7511)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7511)
                       ((_ to_fp 11 53) x1_ack!7510)))
       ((_ to_fp 11 53) x1_ack!7510)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7510)
                    ((_ to_fp 11 53) x0_ack!7517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7511)
                    ((_ to_fp 11 53) x1_ack!7510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7515) ((_ to_fp 11 53) b_ack!7516))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7515) ((_ to_fp 11 53) x0_ack!7517))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7516) ((_ to_fp 11 53) x2_ack!7511))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7515) ((_ to_fp 11 53) b_ack!7516))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7515) ((_ to_fp 11 53) x0_ack!7517))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7515) ((_ to_fp 11 53) x1_ack!7510))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7516) ((_ to_fp 11 53) x0_ack!7517))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7516) ((_ to_fp 11 53) x1_ack!7510)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7510) ((_ to_fp 11 53) b_ack!7516))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7510)
                    ((_ to_fp 11 53) x0_ack!7517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7511)
                    ((_ to_fp 11 53) x1_ack!7510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7514)
                           ((_ to_fp 11 53) y1_ack!7513))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7511)
                                   ((_ to_fp 11 53) x1_ack!7510)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7513)
                           ((_ to_fp 11 53) y0_ack!7512))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7510)
                                   ((_ to_fp 11 53) x0_ack!7517)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7511)
                                   ((_ to_fp 11 53) x1_ack!7510))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7510)
                                   ((_ to_fp 11 53) x0_ack!7517))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7511)
                                   ((_ to_fp 11 53) x1_ack!7510))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7510)
                    ((_ to_fp 11 53) x1_ack!7510))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7516)
                    ((_ to_fp 11 53) x1_ack!7510))))))))

(check-sat)
(exit)
