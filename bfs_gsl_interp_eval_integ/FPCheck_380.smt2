(declare-fun x1_ack!4736 () (_ BitVec 64))
(declare-fun x0_ack!4743 () (_ BitVec 64))
(declare-fun x2_ack!4737 () (_ BitVec 64))
(declare-fun b_ack!4742 () (_ BitVec 64))
(declare-fun a_ack!4741 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4738 () (_ BitVec 64))
(declare-fun y1_ack!4739 () (_ BitVec 64))
(declare-fun y2_ack!4740 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4743) ((_ to_fp 11 53) x1_ack!4736)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4736) ((_ to_fp 11 53) x2_ack!4737)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4736)
                       ((_ to_fp 11 53) x0_ack!4743))
               ((_ to_fp 11 53) x0_ack!4743))
       ((_ to_fp 11 53) x1_ack!4736)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4736)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4736)
                       ((_ to_fp 11 53) x0_ack!4743)))
       ((_ to_fp 11 53) x0_ack!4743)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4737)
                       ((_ to_fp 11 53) x1_ack!4736))
               ((_ to_fp 11 53) x1_ack!4736))
       ((_ to_fp 11 53) x2_ack!4737)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4737)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4737)
                       ((_ to_fp 11 53) x1_ack!4736)))
       ((_ to_fp 11 53) x1_ack!4736)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4736)
                    ((_ to_fp 11 53) x0_ack!4743))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4737)
                    ((_ to_fp 11 53) x1_ack!4736))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4741) ((_ to_fp 11 53) b_ack!4742))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4741) ((_ to_fp 11 53) x0_ack!4743))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4742) ((_ to_fp 11 53) x2_ack!4737))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4741) ((_ to_fp 11 53) b_ack!4742))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4741) ((_ to_fp 11 53) x0_ack!4743))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4741) ((_ to_fp 11 53) x1_ack!4736))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4742) ((_ to_fp 11 53) x0_ack!4743))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4742) ((_ to_fp 11 53) x1_ack!4736))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4736)
                    ((_ to_fp 11 53) x0_ack!4743))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4740)
                           ((_ to_fp 11 53) y1_ack!4739))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4737)
                                   ((_ to_fp 11 53) x1_ack!4736)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4739)
                           ((_ to_fp 11 53) y0_ack!4738))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4736)
                                   ((_ to_fp 11 53) x0_ack!4743)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4737)
                                   ((_ to_fp 11 53) x1_ack!4736))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4736)
                                   ((_ to_fp 11 53) x0_ack!4743)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4741)
                                   ((_ to_fp 11 53) x0_ack!4743))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4741)
                                   ((_ to_fp 11 53) x0_ack!4743)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4742)
                                   ((_ to_fp 11 53) x0_ack!4743))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4742)
                                   ((_ to_fp 11 53) x0_ack!4743))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4736)
                                   ((_ to_fp 11 53) x0_ack!4743))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4741)
                                   ((_ to_fp 11 53) x0_ack!4743))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4742)
                                   ((_ to_fp 11 53) x0_ack!4743))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
