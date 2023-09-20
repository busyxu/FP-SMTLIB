(declare-fun x1_ack!3176 () (_ BitVec 64))
(declare-fun x0_ack!3183 () (_ BitVec 64))
(declare-fun x2_ack!3177 () (_ BitVec 64))
(declare-fun b_ack!3182 () (_ BitVec 64))
(declare-fun a_ack!3181 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3178 () (_ BitVec 64))
(declare-fun y1_ack!3179 () (_ BitVec 64))
(declare-fun y2_ack!3180 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3183) ((_ to_fp 11 53) x1_ack!3176)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3176) ((_ to_fp 11 53) x2_ack!3177)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3176)
                       ((_ to_fp 11 53) x0_ack!3183))
               ((_ to_fp 11 53) x0_ack!3183))
       ((_ to_fp 11 53) x1_ack!3176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3176)
                       ((_ to_fp 11 53) x0_ack!3183)))
       ((_ to_fp 11 53) x0_ack!3183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3177)
                       ((_ to_fp 11 53) x1_ack!3176))
               ((_ to_fp 11 53) x1_ack!3176))
       ((_ to_fp 11 53) x2_ack!3177)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3177)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3177)
                       ((_ to_fp 11 53) x1_ack!3176)))
       ((_ to_fp 11 53) x1_ack!3176)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3176)
                    ((_ to_fp 11 53) x0_ack!3183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3177)
                    ((_ to_fp 11 53) x1_ack!3176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3181) ((_ to_fp 11 53) b_ack!3182))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3181) ((_ to_fp 11 53) x0_ack!3183))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3182) ((_ to_fp 11 53) x2_ack!3177))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3181) ((_ to_fp 11 53) b_ack!3182))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3181) ((_ to_fp 11 53) x0_ack!3183))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3181) ((_ to_fp 11 53) x1_ack!3176)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3176) ((_ to_fp 11 53) a_ack!3181))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3182) ((_ to_fp 11 53) x1_ack!3176))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3182) ((_ to_fp 11 53) x2_ack!3177))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3177)
                    ((_ to_fp 11 53) x1_ack!3176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3180)
                           ((_ to_fp 11 53) y1_ack!3179))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3177)
                                   ((_ to_fp 11 53) x1_ack!3176)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3179)
                           ((_ to_fp 11 53) y0_ack!3178))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3176)
                                   ((_ to_fp 11 53) x0_ack!3183)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3177)
                                   ((_ to_fp 11 53) x1_ack!3176))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3176)
                                   ((_ to_fp 11 53) x0_ack!3183))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3177)
                                   ((_ to_fp 11 53) x1_ack!3176))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!3180)
                                   ((_ to_fp 11 53) y1_ack!3179))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3177)
                                   ((_ to_fp 11 53) x1_ack!3176)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3181)
                                   ((_ to_fp 11 53) x1_ack!3176))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3182)
                                   ((_ to_fp 11 53) x1_ack!3176))))))
  (FPCHECK_FADD_UNDERFLOW y1_ack!3179 a!7)))))))

(check-sat)
(exit)
