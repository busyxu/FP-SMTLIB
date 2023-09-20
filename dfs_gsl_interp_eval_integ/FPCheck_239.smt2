(declare-fun x1_ack!2775 () (_ BitVec 64))
(declare-fun x0_ack!2782 () (_ BitVec 64))
(declare-fun x2_ack!2776 () (_ BitVec 64))
(declare-fun b_ack!2781 () (_ BitVec 64))
(declare-fun a_ack!2780 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2777 () (_ BitVec 64))
(declare-fun y1_ack!2778 () (_ BitVec 64))
(declare-fun y2_ack!2779 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2782) ((_ to_fp 11 53) x1_ack!2775)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2775) ((_ to_fp 11 53) x2_ack!2776)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2775)
                       ((_ to_fp 11 53) x0_ack!2782))
               ((_ to_fp 11 53) x0_ack!2782))
       ((_ to_fp 11 53) x1_ack!2775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2775)
                       ((_ to_fp 11 53) x0_ack!2782)))
       ((_ to_fp 11 53) x0_ack!2782)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2776)
                       ((_ to_fp 11 53) x1_ack!2775))
               ((_ to_fp 11 53) x1_ack!2775))
       ((_ to_fp 11 53) x2_ack!2776)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2776)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2776)
                       ((_ to_fp 11 53) x1_ack!2775)))
       ((_ to_fp 11 53) x1_ack!2775)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2775)
                    ((_ to_fp 11 53) x0_ack!2782))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2776)
                    ((_ to_fp 11 53) x1_ack!2775))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2780) ((_ to_fp 11 53) b_ack!2781))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2780) ((_ to_fp 11 53) x0_ack!2782))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2781) ((_ to_fp 11 53) x2_ack!2776))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2780) ((_ to_fp 11 53) b_ack!2781))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2780) ((_ to_fp 11 53) x0_ack!2782))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2780) ((_ to_fp 11 53) x1_ack!2775))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2781) ((_ to_fp 11 53) x0_ack!2782))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2781) ((_ to_fp 11 53) x1_ack!2775)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2775) ((_ to_fp 11 53) b_ack!2781))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2775)
                    ((_ to_fp 11 53) x0_ack!2782))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2776)
                    ((_ to_fp 11 53) x1_ack!2775))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2779)
                           ((_ to_fp 11 53) y1_ack!2778))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2776)
                                   ((_ to_fp 11 53) x1_ack!2775)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2778)
                           ((_ to_fp 11 53) y0_ack!2777))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2775)
                                   ((_ to_fp 11 53) x0_ack!2782)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2776)
                                   ((_ to_fp 11 53) x1_ack!2775))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2775)
                                   ((_ to_fp 11 53) x0_ack!2782)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2775)
                                   ((_ to_fp 11 53) x1_ack!2775))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2775)
                                   ((_ to_fp 11 53) x1_ack!2775)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2781)
                                   ((_ to_fp 11 53) x1_ack!2775))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2781)
                                   ((_ to_fp 11 53) x1_ack!2775))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2776)
                                   ((_ to_fp 11 53) x1_ack!2775))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2775)
                                   ((_ to_fp 11 53) x1_ack!2775))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2781)
                                   ((_ to_fp 11 53) x1_ack!2775))))))
  (FPCHECK_FMUL_OVERFLOW a!6 a!7))))))

(check-sat)
(exit)
