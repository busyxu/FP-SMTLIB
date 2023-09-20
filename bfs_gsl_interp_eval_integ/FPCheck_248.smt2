(declare-fun x1_ack!2976 () (_ BitVec 64))
(declare-fun x0_ack!2983 () (_ BitVec 64))
(declare-fun x2_ack!2977 () (_ BitVec 64))
(declare-fun b_ack!2982 () (_ BitVec 64))
(declare-fun a_ack!2981 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2978 () (_ BitVec 64))
(declare-fun y1_ack!2979 () (_ BitVec 64))
(declare-fun y2_ack!2980 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2983) ((_ to_fp 11 53) x1_ack!2976)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2976) ((_ to_fp 11 53) x2_ack!2977)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2976)
                       ((_ to_fp 11 53) x0_ack!2983))
               ((_ to_fp 11 53) x0_ack!2983))
       ((_ to_fp 11 53) x1_ack!2976)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2976)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2976)
                       ((_ to_fp 11 53) x0_ack!2983)))
       ((_ to_fp 11 53) x0_ack!2983)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2977)
                       ((_ to_fp 11 53) x1_ack!2976))
               ((_ to_fp 11 53) x1_ack!2976))
       ((_ to_fp 11 53) x2_ack!2977)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2977)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2977)
                       ((_ to_fp 11 53) x1_ack!2976)))
       ((_ to_fp 11 53) x1_ack!2976)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2976)
                    ((_ to_fp 11 53) x0_ack!2983))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2977)
                    ((_ to_fp 11 53) x1_ack!2976))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) b_ack!2982))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) x0_ack!2983))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2982) ((_ to_fp 11 53) x2_ack!2977))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) b_ack!2982))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) x0_ack!2983))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) x1_ack!2976)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2976) ((_ to_fp 11 53) a_ack!2981))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2982) ((_ to_fp 11 53) x1_ack!2976))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2982) ((_ to_fp 11 53) x2_ack!2977))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2977)
                    ((_ to_fp 11 53) x1_ack!2976))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2980)
                           ((_ to_fp 11 53) y1_ack!2979))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2977)
                                   ((_ to_fp 11 53) x1_ack!2976)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2979)
                           ((_ to_fp 11 53) y0_ack!2978))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2976)
                                   ((_ to_fp 11 53) x0_ack!2983)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2977)
                                   ((_ to_fp 11 53) x1_ack!2976))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2976)
                                   ((_ to_fp 11 53) x0_ack!2983))))))
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
                                   ((_ to_fp 11 53) x2_ack!2977)
                                   ((_ to_fp 11 53) x1_ack!2976))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2981)
                    ((_ to_fp 11 53) x1_ack!2976))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2982)
                    ((_ to_fp 11 53) x1_ack!2976))))))))

(check-sat)
(exit)
