(declare-fun a_ack!1033 () (_ BitVec 64))
(declare-fun b_ack!1032 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1033)
                     ((_ to_fp 11 53) b_ack!1032))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1032) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1032))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1033))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1033)
                       ((_ to_fp 11 53) b_ack!1032))
               ((_ to_fp 11 53) a_ack!1033))
       ((_ to_fp 11 53) b_ack!1032)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1033)
                       ((_ to_fp 11 53) b_ack!1032))
               ((_ to_fp 11 53) b_ack!1032))
       ((_ to_fp 11 53) a_ack!1033)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1033)
               ((_ to_fp 11 53) b_ack!1032))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1033) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1033)
                     ((_ to_fp 11 53) b_ack!1032))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1033)
                    ((_ to_fp 11 53) b_ack!1032))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1033)
                    ((_ to_fp 11 53) b_ack!1032))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1033)
                ((_ to_fp 11 53) b_ack!1032))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!1033)
                          ((_ to_fp 11 53) b_ack!1032))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1033)
                                    ((_ to_fp 11 53) b_ack!1032))))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1033)
          ((_ to_fp 11 53) b_ack!1032))
  #x3ff0000000000000))

(check-sat)
(exit)
