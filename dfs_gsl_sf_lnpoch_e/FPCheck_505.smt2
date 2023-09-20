(declare-fun a_ack!1749 () (_ BitVec 64))
(declare-fun b_ack!1748 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1749) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1749)
                     ((_ to_fp 11 53) b_ack!1748))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1748) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1748))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1749))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1749) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1749)
                       ((_ to_fp 11 53) b_ack!1748))
               ((_ to_fp 11 53) a_ack!1749))
       ((_ to_fp 11 53) b_ack!1748)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1749)
                       ((_ to_fp 11 53) b_ack!1748))
               ((_ to_fp 11 53) b_ack!1748))
       ((_ to_fp 11 53) a_ack!1749)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1749)
               ((_ to_fp 11 53) b_ack!1748))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1749) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1749) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1749) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1749)
                     ((_ to_fp 11 53) b_ack!1748))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1749)
                    ((_ to_fp 11 53) b_ack!1748))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1749)
                    ((_ to_fp 11 53) b_ack!1748))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1749)
                ((_ to_fp 11 53) b_ack!1748))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!1749)
                          ((_ to_fp 11 53) b_ack!1748))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1749)
                                    ((_ to_fp 11 53) b_ack!1748))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1749)
                                   ((_ to_fp 11 53) b_ack!1748))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1749)
                                   ((_ to_fp 11 53) b_ack!1748))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1749)
                    ((_ to_fp 11 53) b_ack!1748))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1749)
                    ((_ to_fp 11 53) b_ack!1748))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1749)
               ((_ to_fp 11 53) b_ack!1748))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1749)
                           ((_ to_fp 11 53) b_ack!1748))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1749)
                                   ((_ to_fp 11 53) b_ack!1748)))))
      (a!2 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1749)
                                   ((_ to_fp 11 53) b_ack!1748))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x40040d931ff62706)
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!2)
                    a!1))
    #x4026a09f1b5701a8)))

(check-sat)
(exit)
