(declare-fun x1_ack!3160 () (_ BitVec 64))
(declare-fun x0_ack!3167 () (_ BitVec 64))
(declare-fun x2_ack!3161 () (_ BitVec 64))
(declare-fun b_ack!3166 () (_ BitVec 64))
(declare-fun a_ack!3165 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3162 () (_ BitVec 64))
(declare-fun y1_ack!3163 () (_ BitVec 64))
(declare-fun y2_ack!3164 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3167) ((_ to_fp 11 53) x1_ack!3160)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3160) ((_ to_fp 11 53) x2_ack!3161)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3160)
                       ((_ to_fp 11 53) x0_ack!3167))
               ((_ to_fp 11 53) x0_ack!3167))
       ((_ to_fp 11 53) x1_ack!3160)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3160)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3160)
                       ((_ to_fp 11 53) x0_ack!3167)))
       ((_ to_fp 11 53) x0_ack!3167)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3161)
                       ((_ to_fp 11 53) x1_ack!3160))
               ((_ to_fp 11 53) x1_ack!3160))
       ((_ to_fp 11 53) x2_ack!3161)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3161)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3161)
                       ((_ to_fp 11 53) x1_ack!3160)))
       ((_ to_fp 11 53) x1_ack!3160)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3160)
                    ((_ to_fp 11 53) x0_ack!3167))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3161)
                    ((_ to_fp 11 53) x1_ack!3160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3165) ((_ to_fp 11 53) b_ack!3166))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3165) ((_ to_fp 11 53) x0_ack!3167))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3166) ((_ to_fp 11 53) x2_ack!3161))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3165) ((_ to_fp 11 53) b_ack!3166))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3165) ((_ to_fp 11 53) x0_ack!3167))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3165) ((_ to_fp 11 53) x1_ack!3160)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3160) ((_ to_fp 11 53) a_ack!3165))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3166) ((_ to_fp 11 53) x1_ack!3160))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3166) ((_ to_fp 11 53) x2_ack!3161))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3161)
                    ((_ to_fp 11 53) x1_ack!3160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3164)
                           ((_ to_fp 11 53) y1_ack!3163))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3161)
                                   ((_ to_fp 11 53) x1_ack!3160)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3163)
                           ((_ to_fp 11 53) y0_ack!3162))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3160)
                                   ((_ to_fp 11 53) x0_ack!3167)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3161)
                                   ((_ to_fp 11 53) x1_ack!3160))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3160)
                                   ((_ to_fp 11 53) x0_ack!3167))))))
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
                                   ((_ to_fp 11 53) x2_ack!3161)
                                   ((_ to_fp 11 53) x1_ack!3160))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!3164)
                                   ((_ to_fp 11 53) y1_ack!3163))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3161)
                                   ((_ to_fp 11 53) x1_ack!3160)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3165)
                                   ((_ to_fp 11 53) x1_ack!3160))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3166)
                                   ((_ to_fp 11 53) x1_ack!3160))))))
  (FPCHECK_FADD_OVERFLOW y1_ack!3163 a!7)))))))

(check-sat)
(exit)
