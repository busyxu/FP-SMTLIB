(declare-fun x1_ack!2896 () (_ BitVec 64))
(declare-fun x0_ack!2903 () (_ BitVec 64))
(declare-fun x2_ack!2897 () (_ BitVec 64))
(declare-fun b_ack!2902 () (_ BitVec 64))
(declare-fun a_ack!2901 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2898 () (_ BitVec 64))
(declare-fun y1_ack!2899 () (_ BitVec 64))
(declare-fun y2_ack!2900 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2903) ((_ to_fp 11 53) x1_ack!2896)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2896) ((_ to_fp 11 53) x2_ack!2897)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2896)
                       ((_ to_fp 11 53) x0_ack!2903))
               ((_ to_fp 11 53) x0_ack!2903))
       ((_ to_fp 11 53) x1_ack!2896)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2896)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2896)
                       ((_ to_fp 11 53) x0_ack!2903)))
       ((_ to_fp 11 53) x0_ack!2903)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2897)
                       ((_ to_fp 11 53) x1_ack!2896))
               ((_ to_fp 11 53) x1_ack!2896))
       ((_ to_fp 11 53) x2_ack!2897)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2897)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2897)
                       ((_ to_fp 11 53) x1_ack!2896)))
       ((_ to_fp 11 53) x1_ack!2896)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2896)
                    ((_ to_fp 11 53) x0_ack!2903))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2897)
                    ((_ to_fp 11 53) x1_ack!2896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2901) ((_ to_fp 11 53) b_ack!2902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2901) ((_ to_fp 11 53) x0_ack!2903))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2902) ((_ to_fp 11 53) x2_ack!2897))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2901) ((_ to_fp 11 53) b_ack!2902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2901) ((_ to_fp 11 53) x0_ack!2903))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2901) ((_ to_fp 11 53) x1_ack!2896)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2896) ((_ to_fp 11 53) a_ack!2901))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2902) ((_ to_fp 11 53) x1_ack!2896))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2902) ((_ to_fp 11 53) x2_ack!2897))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2897)
                    ((_ to_fp 11 53) x1_ack!2896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2900)
                           ((_ to_fp 11 53) y1_ack!2899))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2897)
                                   ((_ to_fp 11 53) x1_ack!2896)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2899)
                           ((_ to_fp 11 53) y0_ack!2898))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2896)
                                   ((_ to_fp 11 53) x0_ack!2903)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2897)
                                   ((_ to_fp 11 53) x1_ack!2896))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2896)
                                   ((_ to_fp 11 53) x0_ack!2903))))))
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
                                   ((_ to_fp 11 53) x2_ack!2897)
                                   ((_ to_fp 11 53) x1_ack!2896))))))
  (FPCHECK_FMUL_OVERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
