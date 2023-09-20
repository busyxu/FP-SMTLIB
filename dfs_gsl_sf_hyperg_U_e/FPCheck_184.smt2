(declare-fun c_ack!1076 () (_ BitVec 64))
(declare-fun b_ack!1075 () (_ BitVec 64))
(declare-fun a_ack!1077 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1076) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1075) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1077) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1076) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1077))
                           ((_ to_fp 11 53) b_ack!1075))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!1077))
                          ((_ to_fp 11 53) b_ack!1075))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!1077))
               ((_ to_fp 11 53) b_ack!1075))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1075) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1075) (CF_floor b_ack!1075)))
(assert (FPCHECK_FDIV_ACCURACY
  #x400921fb54442d18
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) b_ack!1075)))))

(check-sat)
(exit)
