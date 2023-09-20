(declare-fun t_ack!4280 () (_ BitVec 64))
(declare-fun t1_ack!4281 () (_ BitVec 64))
(declare-fun h_ack!4282 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4281)
                    ((_ to_fp 11 53) t_ack!4280))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4281)
               ((_ to_fp 11 53) t_ack!4280))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4281)
                ((_ to_fp 11 53) t_ack!4280))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4282)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4281)
               ((_ to_fp 11 53) t_ack!4280))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fddc28f5c28f5c3
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!4281)
          ((_ to_fp 11 53) t_ack!4280))))

(check-sat)
(exit)
