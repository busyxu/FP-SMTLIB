(declare-fun t_ack!393 () (_ BitVec 64))
(declare-fun t1_ack!394 () (_ BitVec 64))
(declare-fun h_ack!395 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!394)
                    ((_ to_fp 11 53) t_ack!393))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!394)
               ((_ to_fp 11 53) t_ack!393))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!394)
                ((_ to_fp 11 53) t_ack!393))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!395)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!394)
               ((_ to_fp 11 53) t_ack!393))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!393
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!394)
                  ((_ to_fp 11 53) t_ack!393)))))

(check-sat)
(exit)
