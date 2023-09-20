(declare-fun x1_ack!7079 () (_ BitVec 64))
(declare-fun x0_ack!7086 () (_ BitVec 64))
(declare-fun x2_ack!7080 () (_ BitVec 64))
(declare-fun b_ack!7085 () (_ BitVec 64))
(declare-fun a_ack!7084 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!7081 () (_ BitVec 64))
(declare-fun y1_ack!7082 () (_ BitVec 64))
(declare-fun y2_ack!7083 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7086) ((_ to_fp 11 53) x1_ack!7079)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7079) ((_ to_fp 11 53) x2_ack!7080)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7079)
                       ((_ to_fp 11 53) x0_ack!7086))
               ((_ to_fp 11 53) x0_ack!7086))
       ((_ to_fp 11 53) x1_ack!7079)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7079)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7079)
                       ((_ to_fp 11 53) x0_ack!7086)))
       ((_ to_fp 11 53) x0_ack!7086)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7080)
                       ((_ to_fp 11 53) x1_ack!7079))
               ((_ to_fp 11 53) x1_ack!7079))
       ((_ to_fp 11 53) x2_ack!7080)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7080)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7080)
                       ((_ to_fp 11 53) x1_ack!7079)))
       ((_ to_fp 11 53) x1_ack!7079)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7079)
                    ((_ to_fp 11 53) x0_ack!7086))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7080)
                    ((_ to_fp 11 53) x1_ack!7079))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7084) ((_ to_fp 11 53) b_ack!7085))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7084) ((_ to_fp 11 53) x0_ack!7086))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7085) ((_ to_fp 11 53) x2_ack!7080))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7084) ((_ to_fp 11 53) b_ack!7085))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7084) ((_ to_fp 11 53) x0_ack!7086))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7084) ((_ to_fp 11 53) x1_ack!7079)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7079) ((_ to_fp 11 53) a_ack!7084))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7085) ((_ to_fp 11 53) x1_ack!7079))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7085) ((_ to_fp 11 53) x2_ack!7080))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7080)
                    ((_ to_fp 11 53) x1_ack!7079))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7083)
                           ((_ to_fp 11 53) y1_ack!7082))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7079)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7082)
                           ((_ to_fp 11 53) y0_ack!7081))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7079)
                                   ((_ to_fp 11 53) x0_ack!7086)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7079))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7079)
                                   ((_ to_fp 11 53) x0_ack!7086))))))
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
                                   ((_ to_fp 11 53) x2_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7079))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7083)
                                   ((_ to_fp 11 53) y1_ack!7082))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7079)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7084)
                                   ((_ to_fp 11 53) x1_ack!7079))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7085)
                                   ((_ to_fp 11 53) x1_ack!7079))))))
  (FPCHECK_FADD_ACCURACY y1_ack!7082 a!7)))))))

(check-sat)
(exit)
