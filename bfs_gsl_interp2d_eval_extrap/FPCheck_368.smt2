(declare-fun x1_ack!3924 () (_ BitVec 64))
(declare-fun x0_ack!3928 () (_ BitVec 64))
(declare-fun y0_ack!3925 () (_ BitVec 64))
(declare-fun x_ack!3926 () (_ BitVec 64))
(declare-fun y_ack!3927 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3928) ((_ to_fp 11 53) x1_ack!3924))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3925) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3926) ((_ to_fp 11 53) x0_ack!3928)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3927) ((_ to_fp 11 53) y0_ack!3925))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3927) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3924)
                       ((_ to_fp 11 53) x0_ack!3928))
               ((_ to_fp 11 53) x0_ack!3928))
       ((_ to_fp 11 53) x1_ack!3924)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3924)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3924)
                       ((_ to_fp 11 53) x0_ack!3928)))
       ((_ to_fp 11 53) x0_ack!3928)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3926)
                           ((_ to_fp 11 53) x0_ack!3928))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3924)
                           ((_ to_fp 11 53) x0_ack!3928)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3926)
                           ((_ to_fp 11 53) x0_ack!3928))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3924)
                           ((_ to_fp 11 53) x0_ack!3928)))))
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
                  ((_ to_fp 11 53) x_ack!3926)
                  ((_ to_fp 11 53) x0_ack!3928))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3924)
                  ((_ to_fp 11 53) x0_ack!3928)))))

(check-sat)
(exit)
