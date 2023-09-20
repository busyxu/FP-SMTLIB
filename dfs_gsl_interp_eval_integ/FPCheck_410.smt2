(declare-fun x1_ack!5037 () (_ BitVec 64))
(declare-fun x0_ack!5044 () (_ BitVec 64))
(declare-fun x2_ack!5038 () (_ BitVec 64))
(declare-fun b_ack!5043 () (_ BitVec 64))
(declare-fun a_ack!5042 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5039 () (_ BitVec 64))
(declare-fun y1_ack!5040 () (_ BitVec 64))
(declare-fun y2_ack!5041 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5044) ((_ to_fp 11 53) x1_ack!5037)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5037) ((_ to_fp 11 53) x2_ack!5038)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5037)
                       ((_ to_fp 11 53) x0_ack!5044))
               ((_ to_fp 11 53) x0_ack!5044))
       ((_ to_fp 11 53) x1_ack!5037)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5037)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5037)
                       ((_ to_fp 11 53) x0_ack!5044)))
       ((_ to_fp 11 53) x0_ack!5044)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5038)
                       ((_ to_fp 11 53) x1_ack!5037))
               ((_ to_fp 11 53) x1_ack!5037))
       ((_ to_fp 11 53) x2_ack!5038)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5038)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5038)
                       ((_ to_fp 11 53) x1_ack!5037)))
       ((_ to_fp 11 53) x1_ack!5037)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5037)
                    ((_ to_fp 11 53) x0_ack!5044))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5038)
                    ((_ to_fp 11 53) x1_ack!5037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) b_ack!5043))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x0_ack!5044))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x2_ack!5038))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) b_ack!5043))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x0_ack!5044))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x1_ack!5037)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5037) ((_ to_fp 11 53) a_ack!5042))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x1_ack!5037))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x2_ack!5038)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5038)
                    ((_ to_fp 11 53) x1_ack!5037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5042)
                       ((_ to_fp 11 53) x1_ack!5037))
               ((_ to_fp 11 53) x1_ack!5037))
       ((_ to_fp 11 53) a_ack!5042)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5042)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5042)
                       ((_ to_fp 11 53) x1_ack!5037)))
       ((_ to_fp 11 53) x1_ack!5037)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5041)
                           ((_ to_fp 11 53) y1_ack!5040))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5038)
                                   ((_ to_fp 11 53) x1_ack!5037)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5040)
                           ((_ to_fp 11 53) y0_ack!5039))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5037)
                                   ((_ to_fp 11 53) x0_ack!5044)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5038)
                                   ((_ to_fp 11 53) x1_ack!5037))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5037)
                                   ((_ to_fp 11 53) x0_ack!5044))))))
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
                                   ((_ to_fp 11 53) x2_ack!5038)
                                   ((_ to_fp 11 53) x1_ack!5037))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5041)
                                   ((_ to_fp 11 53) y1_ack!5040))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5038)
                                   ((_ to_fp 11 53) x1_ack!5037)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
