(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun b_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!24)) ((_ to_fp 11 53) #x4034000000000000)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          ((_ to_fp 11 53) b_ack!24))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          ((_ to_fp 11 53) b_ack!24))))

(check-sat)
(exit)
