(declare-fun d_ack!1150 () (_ BitVec 64))
(declare-fun b_ack!1149 () (_ BitVec 32))
(declare-fun a_ack!1152 () (_ BitVec 64))
(declare-fun c_ack!1151 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1150) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!1149)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1152) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1151)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1151)
                                   ((_ to_fp 11 53) c_ack!1151))))))
  (FPCHECK_FMUL_ACCURACY a!1 c_ack!1151)))

(check-sat)
(exit)
