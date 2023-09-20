(declare-fun x1_ack!6310 () (_ BitVec 64))
(declare-fun x0_ack!6317 () (_ BitVec 64))
(declare-fun x2_ack!6311 () (_ BitVec 64))
(declare-fun b_ack!6316 () (_ BitVec 64))
(declare-fun a_ack!6315 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6312 () (_ BitVec 64))
(declare-fun y1_ack!6313 () (_ BitVec 64))
(declare-fun y2_ack!6314 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6317) ((_ to_fp 11 53) x1_ack!6310)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6310) ((_ to_fp 11 53) x2_ack!6311)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6310)
                       ((_ to_fp 11 53) x0_ack!6317))
               ((_ to_fp 11 53) x0_ack!6317))
       ((_ to_fp 11 53) x1_ack!6310)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6310)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6310)
                       ((_ to_fp 11 53) x0_ack!6317)))
       ((_ to_fp 11 53) x0_ack!6317)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6311)
                       ((_ to_fp 11 53) x1_ack!6310))
               ((_ to_fp 11 53) x1_ack!6310))
       ((_ to_fp 11 53) x2_ack!6311)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6311)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6311)
                       ((_ to_fp 11 53) x1_ack!6310)))
       ((_ to_fp 11 53) x1_ack!6310)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6310)
                    ((_ to_fp 11 53) x0_ack!6317))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6311)
                    ((_ to_fp 11 53) x1_ack!6310))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6315) ((_ to_fp 11 53) b_ack!6316))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6315) ((_ to_fp 11 53) x0_ack!6317))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6316) ((_ to_fp 11 53) x2_ack!6311))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6315) ((_ to_fp 11 53) b_ack!6316))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6315) ((_ to_fp 11 53) x0_ack!6317))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6315) ((_ to_fp 11 53) x1_ack!6310))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6316) ((_ to_fp 11 53) x0_ack!6317))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6316) ((_ to_fp 11 53) x1_ack!6310)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6310) ((_ to_fp 11 53) b_ack!6316))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6310)
                    ((_ to_fp 11 53) x0_ack!6317))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6314)
                           ((_ to_fp 11 53) y1_ack!6313))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6311)
                                   ((_ to_fp 11 53) x1_ack!6310)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6313)
                           ((_ to_fp 11 53) y0_ack!6312))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6310)
                                   ((_ to_fp 11 53) x0_ack!6317)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6311)
                                   ((_ to_fp 11 53) x1_ack!6310))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6310)
                                   ((_ to_fp 11 53) x0_ack!6317))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6310)
                                   ((_ to_fp 11 53) x0_ack!6317))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6313)
                                   ((_ to_fp 11 53) y0_ack!6312))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6310)
                                   ((_ to_fp 11 53) x0_ack!6317)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6315)
                                   ((_ to_fp 11 53) x0_ack!6317))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6310)
                                   ((_ to_fp 11 53) x0_ack!6317))))))
  (FPCHECK_FADD_ACCURACY y0_ack!6312 a!7)))))))

(check-sat)
(exit)
