(declare-fun x1_ack!3768 () (_ BitVec 64))
(declare-fun x0_ack!3772 () (_ BitVec 64))
(declare-fun y0_ack!3769 () (_ BitVec 64))
(declare-fun x_ack!3770 () (_ BitVec 64))
(declare-fun y_ack!3771 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3772) ((_ to_fp 11 53) x1_ack!3768))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3769) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3770) ((_ to_fp 11 53) x0_ack!3772)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3771) ((_ to_fp 11 53) y0_ack!3769))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3771) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3768)
                       ((_ to_fp 11 53) x0_ack!3772))
               ((_ to_fp 11 53) x0_ack!3772))
       ((_ to_fp 11 53) x1_ack!3768)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3768)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3768)
                       ((_ to_fp 11 53) x0_ack!3772)))
       ((_ to_fp 11 53) x0_ack!3772)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3770)
                           ((_ to_fp 11 53) x0_ack!3772))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3768)
                           ((_ to_fp 11 53) x0_ack!3772)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3770)
                           ((_ to_fp 11 53) x0_ack!3772))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3768)
                           ((_ to_fp 11 53) x0_ack!3772)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3771)
                  ((_ to_fp 11 53) y0_ack!3769))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3769)))))

(check-sat)
(exit)
