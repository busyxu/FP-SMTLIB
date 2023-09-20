(declare-fun t_ack!3424 () (_ BitVec 64))
(declare-fun t1_ack!3425 () (_ BitVec 64))
(declare-fun h_ack!3426 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3425)
                    ((_ to_fp 11 53) t_ack!3424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3425)
               ((_ to_fp 11 53) t_ack!3424))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3426) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3425)
                ((_ to_fp 11 53) t_ack!3424))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3426)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3425)
               ((_ to_fp 11 53) t_ack!3424))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fc2e147ae147ae1
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!3425)
          ((_ to_fp 11 53) t_ack!3424))))

(check-sat)
(exit)
