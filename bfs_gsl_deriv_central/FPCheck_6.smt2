(declare-fun h_ack!24 () (_ BitVec 64))
(declare-fun x_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!25)
                    ((_ to_fp 11 53) h_ack!24))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_POW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!25)
          ((_ to_fp 11 53) h_ack!24))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!25)
          ((_ to_fp 11 53) h_ack!24))))

(check-sat)
(exit)
