(declare-fun x1_ack!3758 () (_ BitVec 64))
(declare-fun x0_ack!3765 () (_ BitVec 64))
(declare-fun x2_ack!3759 () (_ BitVec 64))
(declare-fun b_ack!3764 () (_ BitVec 64))
(declare-fun a_ack!3763 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3760 () (_ BitVec 64))
(declare-fun y1_ack!3761 () (_ BitVec 64))
(declare-fun y2_ack!3762 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3765) ((_ to_fp 11 53) x1_ack!3758)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3758) ((_ to_fp 11 53) x2_ack!3759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3758)
                       ((_ to_fp 11 53) x0_ack!3765))
               ((_ to_fp 11 53) x0_ack!3765))
       ((_ to_fp 11 53) x1_ack!3758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3758)
                       ((_ to_fp 11 53) x0_ack!3765)))
       ((_ to_fp 11 53) x0_ack!3765)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3759)
                       ((_ to_fp 11 53) x1_ack!3758))
               ((_ to_fp 11 53) x1_ack!3758))
       ((_ to_fp 11 53) x2_ack!3759)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3759)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3759)
                       ((_ to_fp 11 53) x1_ack!3758)))
       ((_ to_fp 11 53) x1_ack!3758)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3758)
                    ((_ to_fp 11 53) x0_ack!3765))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3759)
                    ((_ to_fp 11 53) x1_ack!3758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3763) ((_ to_fp 11 53) b_ack!3764))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3763) ((_ to_fp 11 53) x0_ack!3765))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3764) ((_ to_fp 11 53) x2_ack!3759))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3763) ((_ to_fp 11 53) b_ack!3764))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3763) ((_ to_fp 11 53) x0_ack!3765))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3763) ((_ to_fp 11 53) x1_ack!3758)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3758) ((_ to_fp 11 53) a_ack!3763))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3764) ((_ to_fp 11 53) x1_ack!3758))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3764) ((_ to_fp 11 53) x2_ack!3759)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3759)
                    ((_ to_fp 11 53) x1_ack!3758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3762)
                           ((_ to_fp 11 53) y1_ack!3761))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3759)
                                   ((_ to_fp 11 53) x1_ack!3758)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3761)
                           ((_ to_fp 11 53) y0_ack!3760))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3758)
                                   ((_ to_fp 11 53) x0_ack!3765)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3759)
                                   ((_ to_fp 11 53) x1_ack!3758))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3758)
                                   ((_ to_fp 11 53) x0_ack!3765))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3759)
                    ((_ to_fp 11 53) x1_ack!3758)))))))

(check-sat)
(exit)
