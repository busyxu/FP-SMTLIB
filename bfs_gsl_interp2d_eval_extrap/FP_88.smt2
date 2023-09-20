(declare-fun x1_ack!3748 () (_ BitVec 64))
(declare-fun x0_ack!3752 () (_ BitVec 64))
(declare-fun y0_ack!3749 () (_ BitVec 64))
(declare-fun x_ack!3750 () (_ BitVec 64))
(declare-fun y_ack!3751 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3752) ((_ to_fp 11 53) x1_ack!3748))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3749) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3750) ((_ to_fp 11 53) x0_ack!3752)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3751) ((_ to_fp 11 53) y0_ack!3749))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3751) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3748)
                       ((_ to_fp 11 53) x0_ack!3752))
               ((_ to_fp 11 53) x0_ack!3752))
       ((_ to_fp 11 53) x1_ack!3748)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3748)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3748)
                       ((_ to_fp 11 53) x0_ack!3752)))
       ((_ to_fp 11 53) x0_ack!3752)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3750)
                           ((_ to_fp 11 53) x0_ack!3752))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3748)
                           ((_ to_fp 11 53) x0_ack!3752)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3750)
                           ((_ to_fp 11 53) x0_ack!3752))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3748)
                           ((_ to_fp 11 53) x0_ack!3752)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
