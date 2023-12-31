(declare-fun t_ack!2030 () (_ BitVec 64))
(declare-fun t1_ack!2031 () (_ BitVec 64))
(declare-fun h_ack!2032 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2031)
                    ((_ to_fp 11 53) t_ack!2030))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2031)
               ((_ to_fp 11 53) t_ack!2030))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2032) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2031)
                ((_ to_fp 11 53) t_ack!2030))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2032)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2031)
               ((_ to_fp 11 53) t_ack!2030))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd4000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!2031)
          ((_ to_fp 11 53) t_ack!2030))))

(check-sat)
(exit)
