(declare-fun t_ack!8203 () (_ BitVec 64))
(declare-fun t1_ack!8204 () (_ BitVec 64))
(declare-fun h_ack!8205 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8204)
                    ((_ to_fp 11 53) t_ack!8203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8204)
                    ((_ to_fp 11 53) t_ack!8203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8204)
                ((_ to_fp 11 53) t_ack!8203))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8205)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8204)
                    ((_ to_fp 11 53) t_ack!8203)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8204)
                    ((_ to_fp 11 53) t_ack!8203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!8203
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fb5555555555555)
          ((_ to_fp 11 53) h_ack!8205))))

(check-sat)
(exit)
