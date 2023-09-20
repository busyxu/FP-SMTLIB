(declare-fun limit_ack!1078 () (_ BitVec 64))
(declare-fun a_ack!1079 () (_ BitVec 64))
(declare-fun b_ack!1075 () (_ BitVec 64))
(declare-fun epsabs_ack!1077 () (_ BitVec 64))
(declare-fun c_ack!1076 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1078)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1075) ((_ to_fp 11 53) a_ack!1079))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1077)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1076) ((_ to_fp 11 53) a_ack!1079))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1076) ((_ to_fp 11 53) b_ack!1075))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1075)
                       ((_ to_fp 11 53) a_ack!1079))
               ((_ to_fp 11 53) a_ack!1079))
       ((_ to_fp 11 53) b_ack!1075)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1075)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1075)
                       ((_ to_fp 11 53) a_ack!1079)))
       ((_ to_fp 11 53) a_ack!1079)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1076))
                           ((_ to_fp 11 53) b_ack!1075))
                   ((_ to_fp 11 53) a_ack!1079))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1075)
                                   ((_ to_fp 11 53) a_ack!1079))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1075)
          ((_ to_fp 11 53) a_ack!1079))))

(check-sat)
(exit)
