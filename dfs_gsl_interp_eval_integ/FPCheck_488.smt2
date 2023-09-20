(declare-fun x1_ack!6101 () (_ BitVec 64))
(declare-fun x0_ack!6108 () (_ BitVec 64))
(declare-fun x2_ack!6102 () (_ BitVec 64))
(declare-fun b_ack!6107 () (_ BitVec 64))
(declare-fun a_ack!6106 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!6103 () (_ BitVec 64))
(declare-fun y1_ack!6104 () (_ BitVec 64))
(declare-fun y2_ack!6105 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6108) ((_ to_fp 11 53) x1_ack!6101)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6101) ((_ to_fp 11 53) x2_ack!6102)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6101)
                       ((_ to_fp 11 53) x0_ack!6108))
               ((_ to_fp 11 53) x0_ack!6108))
       ((_ to_fp 11 53) x1_ack!6101)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6101)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6101)
                       ((_ to_fp 11 53) x0_ack!6108)))
       ((_ to_fp 11 53) x0_ack!6108)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6102)
                       ((_ to_fp 11 53) x1_ack!6101))
               ((_ to_fp 11 53) x1_ack!6101))
       ((_ to_fp 11 53) x2_ack!6102)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6102)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6102)
                       ((_ to_fp 11 53) x1_ack!6101)))
       ((_ to_fp 11 53) x1_ack!6101)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6101)
                    ((_ to_fp 11 53) x0_ack!6108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6102)
                    ((_ to_fp 11 53) x1_ack!6101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6106) ((_ to_fp 11 53) b_ack!6107))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6106) ((_ to_fp 11 53) x0_ack!6108))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6107) ((_ to_fp 11 53) x2_ack!6102))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6106) ((_ to_fp 11 53) b_ack!6107))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6106) ((_ to_fp 11 53) x0_ack!6108))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6106) ((_ to_fp 11 53) x1_ack!6101)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6101) ((_ to_fp 11 53) a_ack!6106))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6107) ((_ to_fp 11 53) x1_ack!6101))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6107) ((_ to_fp 11 53) x2_ack!6102))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6102)
                    ((_ to_fp 11 53) x1_ack!6101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6105)
                           ((_ to_fp 11 53) y1_ack!6104))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6102)
                                   ((_ to_fp 11 53) x1_ack!6101)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6104)
                           ((_ to_fp 11 53) y0_ack!6103))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6101)
                                   ((_ to_fp 11 53) x0_ack!6108)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6102)
                                   ((_ to_fp 11 53) x1_ack!6101))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6101)
                                   ((_ to_fp 11 53) x0_ack!6108))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6102)
                    ((_ to_fp 11 53) x1_ack!6101))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
