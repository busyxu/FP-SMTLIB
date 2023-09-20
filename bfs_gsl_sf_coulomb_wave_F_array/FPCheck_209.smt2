(declare-fun d_ack!1391 () (_ BitVec 64))
(declare-fun b_ack!1390 () (_ BitVec 32))
(declare-fun a_ack!1393 () (_ BitVec 64))
(declare-fun c_ack!1392 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1391) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1390))
(assert (not (bvsle #x00000001 b_ack!1390)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1393) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1392)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ee4f0514e4e324f
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4048800000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1392)
                  ((_ to_fp 11 53) c_ack!1392)))))

(check-sat)
(exit)
