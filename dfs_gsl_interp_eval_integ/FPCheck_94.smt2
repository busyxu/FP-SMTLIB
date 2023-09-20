(declare-fun x1_ack!1014 () (_ BitVec 64))
(declare-fun x0_ack!1021 () (_ BitVec 64))
(declare-fun x2_ack!1015 () (_ BitVec 64))
(declare-fun b_ack!1020 () (_ BitVec 64))
(declare-fun a_ack!1019 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1016 () (_ BitVec 64))
(declare-fun y1_ack!1017 () (_ BitVec 64))
(declare-fun y2_ack!1018 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1021) ((_ to_fp 11 53) x1_ack!1014)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1014) ((_ to_fp 11 53) x2_ack!1015)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1014)
                       ((_ to_fp 11 53) x0_ack!1021))
               ((_ to_fp 11 53) x0_ack!1021))
       ((_ to_fp 11 53) x1_ack!1014)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1014)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1014)
                       ((_ to_fp 11 53) x0_ack!1021)))
       ((_ to_fp 11 53) x0_ack!1021)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1015)
                       ((_ to_fp 11 53) x1_ack!1014))
               ((_ to_fp 11 53) x1_ack!1014))
       ((_ to_fp 11 53) x2_ack!1015)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1015)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1015)
                       ((_ to_fp 11 53) x1_ack!1014)))
       ((_ to_fp 11 53) x1_ack!1014)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1014)
                    ((_ to_fp 11 53) x0_ack!1021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1015)
                    ((_ to_fp 11 53) x1_ack!1014))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) b_ack!1020))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) x0_ack!1021))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1020) ((_ to_fp 11 53) x2_ack!1015))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) b_ack!1020))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) x0_ack!1021))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) x1_ack!1014))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1020) ((_ to_fp 11 53) x0_ack!1021))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1020) ((_ to_fp 11 53) x1_ack!1014)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1014) ((_ to_fp 11 53) b_ack!1020))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1014)
                    ((_ to_fp 11 53) x0_ack!1021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1018)
                           ((_ to_fp 11 53) y1_ack!1017))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1015)
                                   ((_ to_fp 11 53) x1_ack!1014)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1017)
                           ((_ to_fp 11 53) y0_ack!1016))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1014)
                                   ((_ to_fp 11 53) x0_ack!1021)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1015)
                                   ((_ to_fp 11 53) x1_ack!1014))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1014)
                                   ((_ to_fp 11 53) x0_ack!1021))))))
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
                                   ((_ to_fp 11 53) x1_ack!1014)
                                   ((_ to_fp 11 53) x0_ack!1021))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1017)
                                   ((_ to_fp 11 53) y0_ack!1016))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1014)
                                   ((_ to_fp 11 53) x0_ack!1021)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
