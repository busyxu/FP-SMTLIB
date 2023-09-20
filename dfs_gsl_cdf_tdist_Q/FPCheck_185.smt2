(declare-fun mu_ack!661 () (_ BitVec 64))
(declare-fun x_ack!662 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!661) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!662)
                    ((_ to_fp 11 53) x_ack!662))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!661)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!662)
                    ((_ to_fp 11 53) x_ack!662))
            ((_ to_fp 11 53) mu_ack!661))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!662))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!662)
                       ((_ to_fp 11 53) x_ack!662))
               ((_ to_fp 11 53) x_ack!662))
       ((_ to_fp 11 53) x_ack!662)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!662))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!662)
                       ((_ to_fp 11 53) x_ack!662))
               ((_ to_fp 11 53) x_ack!662))
       ((_ to_fp 11 53) x_ack!662)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!661)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!662)
                           ((_ to_fp 11 53) x_ack!662)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!661)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!662)
                           ((_ to_fp 11 53) x_ack!662)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!661)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!662)
                           ((_ to_fp 11 53) x_ack!662)))))
  (FPCHECK_FDIV_INVALID
    a!1
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
