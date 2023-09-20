(declare-fun x1_ack!3949 () (_ BitVec 64))
(declare-fun x0_ack!3953 () (_ BitVec 64))
(declare-fun y0_ack!3950 () (_ BitVec 64))
(declare-fun x_ack!3951 () (_ BitVec 64))
(declare-fun y_ack!3952 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3953) ((_ to_fp 11 53) x1_ack!3949))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3950) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3951) ((_ to_fp 11 53) x0_ack!3953)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3952) ((_ to_fp 11 53) y0_ack!3950))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3952) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3949)
                       ((_ to_fp 11 53) x0_ack!3953))
               ((_ to_fp 11 53) x0_ack!3953))
       ((_ to_fp 11 53) x1_ack!3949)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3949)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3949)
                       ((_ to_fp 11 53) x0_ack!3953)))
       ((_ to_fp 11 53) x0_ack!3953)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3951)
                           ((_ to_fp 11 53) x0_ack!3953))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3949)
                           ((_ to_fp 11 53) x0_ack!3953)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3951)
                           ((_ to_fp 11 53) x0_ack!3953))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3949)
                           ((_ to_fp 11 53) x0_ack!3953)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3951)
                                   ((_ to_fp 11 53) x0_ack!3953))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3949)
                                   ((_ to_fp 11 53) x0_ack!3953))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!3952)
                    ((_ to_fp 11 53) y0_ack!3950))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!3950))))))

(check-sat)
(exit)
