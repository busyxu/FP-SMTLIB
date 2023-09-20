(declare-fun x1_ack!7492 () (_ BitVec 64))
(declare-fun x0_ack!7499 () (_ BitVec 64))
(declare-fun x2_ack!7493 () (_ BitVec 64))
(declare-fun b_ack!7498 () (_ BitVec 64))
(declare-fun a_ack!7497 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!7494 () (_ BitVec 64))
(declare-fun y1_ack!7495 () (_ BitVec 64))
(declare-fun y2_ack!7496 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7499) ((_ to_fp 11 53) x1_ack!7492)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7492) ((_ to_fp 11 53) x2_ack!7493)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7492)
                       ((_ to_fp 11 53) x0_ack!7499))
               ((_ to_fp 11 53) x0_ack!7499))
       ((_ to_fp 11 53) x1_ack!7492)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7492)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7492)
                       ((_ to_fp 11 53) x0_ack!7499)))
       ((_ to_fp 11 53) x0_ack!7499)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7493)
                       ((_ to_fp 11 53) x1_ack!7492))
               ((_ to_fp 11 53) x1_ack!7492))
       ((_ to_fp 11 53) x2_ack!7493)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7493)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7493)
                       ((_ to_fp 11 53) x1_ack!7492)))
       ((_ to_fp 11 53) x1_ack!7492)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7492)
                    ((_ to_fp 11 53) x0_ack!7499))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7493)
                    ((_ to_fp 11 53) x1_ack!7492))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7497) ((_ to_fp 11 53) b_ack!7498))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7497) ((_ to_fp 11 53) x0_ack!7499))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7498) ((_ to_fp 11 53) x2_ack!7493))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7497) ((_ to_fp 11 53) b_ack!7498))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7497) ((_ to_fp 11 53) x0_ack!7499))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7497) ((_ to_fp 11 53) x1_ack!7492))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7498) ((_ to_fp 11 53) x0_ack!7499)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7492)
                    ((_ to_fp 11 53) x0_ack!7499))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7496)
                           ((_ to_fp 11 53) y1_ack!7495))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7493)
                                   ((_ to_fp 11 53) x1_ack!7492)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7495)
                           ((_ to_fp 11 53) y0_ack!7494))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7492)
                                   ((_ to_fp 11 53) x0_ack!7499)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7493)
                                   ((_ to_fp 11 53) x1_ack!7492))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7492)
                                   ((_ to_fp 11 53) x0_ack!7499))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7492)
                    ((_ to_fp 11 53) x0_ack!7499))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
