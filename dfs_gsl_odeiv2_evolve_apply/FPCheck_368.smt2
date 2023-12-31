(declare-fun t_ack!3445 () (_ BitVec 64))
(declare-fun t1_ack!3446 () (_ BitVec 64))
(declare-fun h_ack!3447 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3446)
                    ((_ to_fp 11 53) t_ack!3445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3446)
               ((_ to_fp 11 53) t_ack!3445))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3446)
                ((_ to_fp 11 53) t_ack!3445))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3447)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3446)
               ((_ to_fp 11 53) t_ack!3445))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!3445
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc2e147ae147ae1)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!3446)
                  ((_ to_fp 11 53) t_ack!3445)))))

(check-sat)
(exit)
