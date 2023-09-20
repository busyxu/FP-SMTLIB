(declare-fun x1_ack!5544 () (_ BitVec 64))
(declare-fun x0_ack!5551 () (_ BitVec 64))
(declare-fun x2_ack!5545 () (_ BitVec 64))
(declare-fun b_ack!5550 () (_ BitVec 64))
(declare-fun a_ack!5549 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!5546 () (_ BitVec 64))
(declare-fun y1_ack!5547 () (_ BitVec 64))
(declare-fun y2_ack!5548 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5551) ((_ to_fp 11 53) x1_ack!5544)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5544) ((_ to_fp 11 53) x2_ack!5545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5544)
                       ((_ to_fp 11 53) x0_ack!5551))
               ((_ to_fp 11 53) x0_ack!5551))
       ((_ to_fp 11 53) x1_ack!5544)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5544)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5544)
                       ((_ to_fp 11 53) x0_ack!5551)))
       ((_ to_fp 11 53) x0_ack!5551)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5545)
                       ((_ to_fp 11 53) x1_ack!5544))
               ((_ to_fp 11 53) x1_ack!5544))
       ((_ to_fp 11 53) x2_ack!5545)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5545)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5545)
                       ((_ to_fp 11 53) x1_ack!5544)))
       ((_ to_fp 11 53) x1_ack!5544)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5544)
                    ((_ to_fp 11 53) x0_ack!5551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5545)
                    ((_ to_fp 11 53) x1_ack!5544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5549) ((_ to_fp 11 53) b_ack!5550))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5549) ((_ to_fp 11 53) x0_ack!5551))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5550) ((_ to_fp 11 53) x2_ack!5545))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5549) ((_ to_fp 11 53) b_ack!5550))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5549) ((_ to_fp 11 53) x0_ack!5551))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5549) ((_ to_fp 11 53) x1_ack!5544))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5550) ((_ to_fp 11 53) x0_ack!5551))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5550) ((_ to_fp 11 53) x1_ack!5544)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5544) ((_ to_fp 11 53) b_ack!5550))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5544)
                    ((_ to_fp 11 53) x0_ack!5551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5548)
                           ((_ to_fp 11 53) y1_ack!5547))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5544)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5547)
                           ((_ to_fp 11 53) y0_ack!5546))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5544)
                                   ((_ to_fp 11 53) x0_ack!5551)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5545)
                                   ((_ to_fp 11 53) x1_ack!5544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5544)
                                   ((_ to_fp 11 53) x0_ack!5551))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
