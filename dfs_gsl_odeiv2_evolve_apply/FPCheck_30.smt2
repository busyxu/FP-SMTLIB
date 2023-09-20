(declare-fun t_ack!223 () (_ BitVec 64))
(declare-fun t1_ack!224 () (_ BitVec 64))
(declare-fun h_ack!226 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!225 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!224)
                    ((_ to_fp 11 53) t_ack!223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!224)
               ((_ to_fp 11 53) t_ack!223))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!224)
                ((_ to_fp 11 53) t_ack!223))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!226)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!224)
               ((_ to_fp 11 53) t_ack!223))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!224)
                  ((_ to_fp 11 53) t_ack!223)))
  y1_ack!225))

(check-sat)
(exit)
