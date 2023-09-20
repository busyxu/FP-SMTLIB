(declare-fun x1_ack!2928 () (_ BitVec 64))
(declare-fun x0_ack!2935 () (_ BitVec 64))
(declare-fun x2_ack!2929 () (_ BitVec 64))
(declare-fun b_ack!2934 () (_ BitVec 64))
(declare-fun a_ack!2933 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2930 () (_ BitVec 64))
(declare-fun y1_ack!2931 () (_ BitVec 64))
(declare-fun y2_ack!2932 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2935) ((_ to_fp 11 53) x1_ack!2928)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2928) ((_ to_fp 11 53) x2_ack!2929)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2928)
                       ((_ to_fp 11 53) x0_ack!2935))
               ((_ to_fp 11 53) x0_ack!2935))
       ((_ to_fp 11 53) x1_ack!2928)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2928)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2928)
                       ((_ to_fp 11 53) x0_ack!2935)))
       ((_ to_fp 11 53) x0_ack!2935)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2929)
                       ((_ to_fp 11 53) x1_ack!2928))
               ((_ to_fp 11 53) x1_ack!2928))
       ((_ to_fp 11 53) x2_ack!2929)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2929)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2929)
                       ((_ to_fp 11 53) x1_ack!2928)))
       ((_ to_fp 11 53) x1_ack!2928)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2928)
                    ((_ to_fp 11 53) x0_ack!2935))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2929)
                    ((_ to_fp 11 53) x1_ack!2928))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2933) ((_ to_fp 11 53) b_ack!2934))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2933) ((_ to_fp 11 53) x0_ack!2935))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2934) ((_ to_fp 11 53) x2_ack!2929))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2933) ((_ to_fp 11 53) b_ack!2934))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2933) ((_ to_fp 11 53) x0_ack!2935))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2933) ((_ to_fp 11 53) x1_ack!2928)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2928) ((_ to_fp 11 53) a_ack!2933))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2934) ((_ to_fp 11 53) x1_ack!2928))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2934) ((_ to_fp 11 53) x2_ack!2929))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2929)
                    ((_ to_fp 11 53) x1_ack!2928))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2932)
                           ((_ to_fp 11 53) y1_ack!2931))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2929)
                                   ((_ to_fp 11 53) x1_ack!2928)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2931)
                           ((_ to_fp 11 53) y0_ack!2930))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2928)
                                   ((_ to_fp 11 53) x0_ack!2935)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2929)
                                   ((_ to_fp 11 53) x1_ack!2928))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2928)
                                   ((_ to_fp 11 53) x0_ack!2935))))))
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
                                   ((_ to_fp 11 53) x2_ack!2929)
                                   ((_ to_fp 11 53) x1_ack!2928))))))
  (FPCHECK_FMUL_ACCURACY #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
