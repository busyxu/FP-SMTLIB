(declare-fun x1_ack!3657 () (_ BitVec 64))
(declare-fun x0_ack!3661 () (_ BitVec 64))
(declare-fun y0_ack!3658 () (_ BitVec 64))
(declare-fun x_ack!3659 () (_ BitVec 64))
(declare-fun y_ack!3660 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3661) ((_ to_fp 11 53) x1_ack!3657))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3658) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3659) ((_ to_fp 11 53) x0_ack!3661)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3660) ((_ to_fp 11 53) y0_ack!3658))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3660) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3657)
                       ((_ to_fp 11 53) x0_ack!3661))
               ((_ to_fp 11 53) x0_ack!3661))
       ((_ to_fp 11 53) x1_ack!3657)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3657)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3657)
                       ((_ to_fp 11 53) x0_ack!3661)))
       ((_ to_fp 11 53) x0_ack!3661)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3659)
                           ((_ to_fp 11 53) x0_ack!3661))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3657)
                           ((_ to_fp 11 53) x0_ack!3661)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3659)
                           ((_ to_fp 11 53) x0_ack!3661))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3657)
                           ((_ to_fp 11 53) x0_ack!3661)))))
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
                  ((_ to_fp 11 53) y_ack!3660)
                  ((_ to_fp 11 53) y0_ack!3658))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3658)))))

(check-sat)
(exit)
