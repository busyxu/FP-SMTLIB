(declare-fun d_ack!1419 () (_ BitVec 64))
(declare-fun b_ack!1418 () (_ BitVec 32))
(declare-fun a_ack!1421 () (_ BitVec 64))
(declare-fun c_ack!1420 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1419) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1418))
(assert (not (bvsle #x00000001 b_ack!1418)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1421) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1420)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1420)
                                   ((_ to_fp 11 53) c_ack!1420))))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x401c000000000000)))

(check-sat)
(exit)
