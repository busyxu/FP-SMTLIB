(declare-fun x1_ack!7177 () (_ BitVec 64))
(declare-fun x0_ack!7184 () (_ BitVec 64))
(declare-fun x2_ack!7178 () (_ BitVec 64))
(declare-fun b_ack!7183 () (_ BitVec 64))
(declare-fun a_ack!7182 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7179 () (_ BitVec 64))
(declare-fun y1_ack!7180 () (_ BitVec 64))
(declare-fun y2_ack!7181 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7184) ((_ to_fp 11 53) x1_ack!7177)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7177) ((_ to_fp 11 53) x2_ack!7178)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7177)
                       ((_ to_fp 11 53) x0_ack!7184))
               ((_ to_fp 11 53) x0_ack!7184))
       ((_ to_fp 11 53) x1_ack!7177)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7177)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7177)
                       ((_ to_fp 11 53) x0_ack!7184)))
       ((_ to_fp 11 53) x0_ack!7184)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7178)
                       ((_ to_fp 11 53) x1_ack!7177))
               ((_ to_fp 11 53) x1_ack!7177))
       ((_ to_fp 11 53) x2_ack!7178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7178)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7178)
                       ((_ to_fp 11 53) x1_ack!7177)))
       ((_ to_fp 11 53) x1_ack!7177)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7177)
                    ((_ to_fp 11 53) x0_ack!7184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7178)
                    ((_ to_fp 11 53) x1_ack!7177))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7182) ((_ to_fp 11 53) b_ack!7183))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7182) ((_ to_fp 11 53) x0_ack!7184))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7183) ((_ to_fp 11 53) x2_ack!7178))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7182) ((_ to_fp 11 53) b_ack!7183))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7182) ((_ to_fp 11 53) x0_ack!7184))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7182) ((_ to_fp 11 53) x1_ack!7177))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7183) ((_ to_fp 11 53) x0_ack!7184))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7183) ((_ to_fp 11 53) x1_ack!7177)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7177) ((_ to_fp 11 53) b_ack!7183))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7177)
                    ((_ to_fp 11 53) x0_ack!7184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7178)
                    ((_ to_fp 11 53) x1_ack!7177))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7181)
                           ((_ to_fp 11 53) y1_ack!7180))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7178)
                                   ((_ to_fp 11 53) x1_ack!7177)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7180)
                           ((_ to_fp 11 53) y0_ack!7179))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7177)
                                   ((_ to_fp 11 53) x0_ack!7184)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7178)
                                   ((_ to_fp 11 53) x1_ack!7177))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7177)
                                   ((_ to_fp 11 53) x0_ack!7184))))))
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
                                   ((_ to_fp 11 53) x2_ack!7178)
                                   ((_ to_fp 11 53) x1_ack!7177))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7181)
                                   ((_ to_fp 11 53) y1_ack!7180))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7178)
                                   ((_ to_fp 11 53) x1_ack!7177)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7177)
                    ((_ to_fp 11 53) x1_ack!7177))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7183)
                    ((_ to_fp 11 53) x1_ack!7177)))))))))

(check-sat)
(exit)
