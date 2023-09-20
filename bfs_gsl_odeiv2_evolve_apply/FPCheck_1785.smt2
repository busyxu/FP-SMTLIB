(declare-fun t_ack!10016 () (_ BitVec 64))
(declare-fun t1_ack!10017 () (_ BitVec 64))
(declare-fun h_ack!10018 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10017)
                    ((_ to_fp 11 53) t_ack!10016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10017)
                    ((_ to_fp 11 53) t_ack!10016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10017)
                ((_ to_fp 11 53) t_ack!10016))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10018)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10017)
                    ((_ to_fp 11 53) t_ack!10016)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10017)
                    ((_ to_fp 11 53) t_ack!10016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!10016
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd8000000000000)
          ((_ to_fp 11 53) h_ack!10018))))

(check-sat)
(exit)
