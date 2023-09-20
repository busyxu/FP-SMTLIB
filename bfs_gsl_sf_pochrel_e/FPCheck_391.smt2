(declare-fun a_ack!1037 () (_ BitVec 64))
(declare-fun b_ack!1036 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1036))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!1037))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1037))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!1036))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1036) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1037) (CF_floor a_ack!1037))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1037)
                       ((_ to_fp 11 53) b_ack!1036))
               ((_ to_fp 11 53) a_ack!1037))
       ((_ to_fp 11 53) b_ack!1036)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1037)
                       ((_ to_fp 11 53) b_ack!1036))
               ((_ to_fp 11 53) b_ack!1036))
       ((_ to_fp 11 53) a_ack!1037)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1037)
               ((_ to_fp 11 53) b_ack!1036))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!1037))
  b_ack!1036))

(check-sat)
(exit)
